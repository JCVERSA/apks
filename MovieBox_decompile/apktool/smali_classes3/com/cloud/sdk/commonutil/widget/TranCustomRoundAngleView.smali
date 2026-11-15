.class public final Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;
.super Landroid/view/View;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010%\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010\"R\u0016\u0010\'\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\"R\u0016\u0010)\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010\"\u00a8\u0006*"
    }
    d2 = {
        "Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "w",
        "h",
        "oldw",
        "oldh",
        "",
        "onSizeChanged",
        "(IIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "draw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/graphics/Path;",
        "a",
        "Landroid/graphics/Path;",
        "path",
        "Landroid/graphics/Paint;",
        "b",
        "Landroid/graphics/Paint;",
        "paint",
        "c",
        "I",
        "viewColor",
        "",
        "d",
        "F",
        "topLeftRadius",
        "e",
        "topRightRadius",
        "f",
        "bottomLeftRadius",
        "g",
        "bottomRightRadius",
        "commonutil_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F


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

    invoke-direct/range {v1 .. v6}, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->a:Landroid/graphics/Path;

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iput-object p3, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->b:Landroid/graphics/Paint;

    .line 10
    sget-object v0, Lcom/cloud/sdk/commonutil/R$styleable;->TranCustomRoundAngleView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget p2, Lcom/cloud/sdk/commonutil/R$styleable;->TranCustomRoundAngleView_topLeftRadius:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->d:F

    .line 12
    sget p2, Lcom/cloud/sdk/commonutil/R$styleable;->TranCustomRoundAngleView_topRightRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->e:F

    .line 13
    sget p2, Lcom/cloud/sdk/commonutil/R$styleable;->TranCustomRoundAngleView_bottomLeftRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->f:F

    .line 14
    sget p2, Lcom/cloud/sdk/commonutil/R$styleable;->TranCustomRoundAngleView_bottomRightRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->g:F

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    iget p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->c:I

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
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
    iget-object v1, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->a:Landroid/graphics/Path;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    new-instance p3, Landroid/graphics/RectF;

    .line 5
    .line 6
    int-to-float p1, p1

    .line 7
    int-to-float p2, p2

    .line 8
    const/4 p4, 0x0

    .line 9
    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->a:Landroid/graphics/Path;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 15
    .line 16
    .line 17
    iget p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->d:F

    .line 18
    .line 19
    iget p2, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->e:F

    .line 20
    .line 21
    iget p4, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->g:F

    .line 22
    .line 23
    iget v0, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->f:F

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    new-array v1, v1, [F

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput p1, v1, v2

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    aput p1, v1, v2

    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    aput p2, v1, p1

    .line 37
    .line 38
    const/4 p1, 0x3

    .line 39
    aput p2, v1, p1

    .line 40
    .line 41
    const/4 p1, 0x4

    .line 42
    aput p4, v1, p1

    .line 43
    .line 44
    const/4 p1, 0x5

    .line 45
    aput p4, v1, p1

    .line 46
    .line 47
    const/4 p1, 0x6

    .line 48
    aput v0, v1, p1

    .line 49
    .line 50
    const/4 p1, 0x7

    .line 51
    aput v0, v1, p1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/cloud/sdk/commonutil/widget/TranCustomRoundAngleView;->a:Landroid/graphics/Path;

    .line 54
    .line 55
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 56
    .line 57
    invoke-virtual {p1, p3, v1, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
