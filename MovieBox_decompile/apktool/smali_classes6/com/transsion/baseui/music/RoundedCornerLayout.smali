.class public final Lcom/transsion/baseui/music/RoundedCornerLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0017R\u0016\u0010\u001e\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0017R\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/baseui/music/RoundedCornerLayout;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
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
        "dispatchDraw",
        "(Landroid/graphics/Canvas;)V",
        "",
        "a",
        "F",
        "cornerRadiusTopLeft",
        "b",
        "cornerRadiusTopRight",
        "c",
        "cornerRadiusBottomLeft",
        "d",
        "cornerRadiusBottomRight",
        "Landroid/graphics/Path;",
        "e",
        "Landroid/graphics/Path;",
        "path",
        "BaseUI_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private final e:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/baseui/music/RoundedCornerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/baseui/music/RoundedCornerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/transsion/baseui/music/RoundedCornerLayout;->e:Landroid/graphics/Path;

    .line 6
    sget-object p3, Lcom/transsion/baseui/R$styleable;->RoundedCornerLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget p2, Lcom/transsion/baseui/R$styleable;->RoundedCornerLayout_cornerRadiusTopLeft:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 8
    iput p2, p0, Lcom/transsion/baseui/music/RoundedCornerLayout;->a:F

    .line 9
    sget p2, Lcom/transsion/baseui/R$styleable;->RoundedCornerLayout_cornerRadiusTopRight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 10
    iput p2, p0, Lcom/transsion/baseui/music/RoundedCornerLayout;->b:F

    .line 11
    sget p2, Lcom/transsion/baseui/R$styleable;->RoundedCornerLayout_cornerRadiusBottomLeft:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 12
    iput p2, p0, Lcom/transsion/baseui/music/RoundedCornerLayout;->c:F

    .line 13
    sget p2, Lcom/transsion/baseui/R$styleable;->RoundedCornerLayout_cornerRadiusBottomRight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 14
    iput p2, p0, Lcom/transsion/baseui/music/RoundedCornerLayout;->d:F

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/baseui/music/RoundedCornerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    iget-object v1, p0, Lcom/transsion/baseui/music/RoundedCornerLayout;->e:Landroid/graphics/Path;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

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
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/transsion/baseui/music/RoundedCornerLayout;->e:Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 7
    .line 8
    .line 9
    iget-object p3, p0, Lcom/transsion/baseui/music/RoundedCornerLayout;->e:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance p4, Landroid/graphics/RectF;

    .line 12
    .line 13
    int-to-float p1, p1

    .line 14
    int-to-float p2, p2

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p4, v0, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 17
    .line 18
    .line 19
    iget p1, p0, Lcom/transsion/baseui/music/RoundedCornerLayout;->a:F

    .line 20
    .line 21
    iget p2, p0, Lcom/transsion/baseui/music/RoundedCornerLayout;->b:F

    .line 22
    .line 23
    iget v0, p0, Lcom/transsion/baseui/music/RoundedCornerLayout;->d:F

    .line 24
    .line 25
    iget v1, p0, Lcom/transsion/baseui/music/RoundedCornerLayout;->c:F

    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    new-array v2, v2, [F

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    aput p1, v2, v3

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    aput p1, v2, v3

    .line 36
    .line 37
    const/4 p1, 0x2

    .line 38
    aput p2, v2, p1

    .line 39
    .line 40
    const/4 p1, 0x3

    .line 41
    aput p2, v2, p1

    .line 42
    .line 43
    const/4 p1, 0x4

    .line 44
    aput v0, v2, p1

    .line 45
    .line 46
    const/4 p1, 0x5

    .line 47
    aput v0, v2, p1

    .line 48
    .line 49
    const/4 p1, 0x6

    .line 50
    aput v1, v2, p1

    .line 51
    .line 52
    const/4 p1, 0x7

    .line 53
    aput v1, v2, p1

    .line 54
    .line 55
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 56
    .line 57
    invoke-virtual {p3, p4, v2, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
