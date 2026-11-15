.class public final Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0013R\u0016\u0010\u001a\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0013R\u0016\u0010\u001c\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "dispatchDraw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/graphics/Path;",
        "a",
        "Landroid/graphics/Path;",
        "path",
        "",
        "b",
        "F",
        "radius",
        "c",
        "topLeftRadius",
        "d",
        "topRightRadius",
        "e",
        "bottomLeftRadius",
        "f",
        "bottomRightRadius",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Landroid/graphics/Path;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "attrs"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/graphics/Path;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->a:Landroid/graphics/Path;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lcom/transsion/shorttv/R$styleable;->ShortTvRoundedConstraintLayout:[I

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "obtainStyledAttributes(...)"

    .line 33
    .line 34
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    sget p2, Lcom/transsion/shorttv/R$styleable;->ShortTvRoundedConstraintLayout_cornerRadius:I

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iput p2, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->b:F

    .line 45
    .line 46
    sget p2, Lcom/transsion/shorttv/R$styleable;->ShortTvRoundedConstraintLayout_topLeftRadius:I

    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iput p2, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->c:F

    .line 53
    .line 54
    sget p2, Lcom/transsion/shorttv/R$styleable;->ShortTvRoundedConstraintLayout_topRightRadius:I

    .line 55
    .line 56
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    iput p2, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->d:F

    .line 61
    .line 62
    sget p2, Lcom/transsion/shorttv/R$styleable;->ShortTvRoundedConstraintLayout_bottomLeftRadius:I

    .line 63
    .line 64
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    iput p2, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->e:F

    .line 69
    .line 70
    sget p2, Lcom/transsion/shorttv/R$styleable;->ShortTvRoundedConstraintLayout_bottomRightRadius:I

    .line 71
    .line 72
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    iput p2, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->f:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p2

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    .line 85
    .line 86
    throw p2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->b:F

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    cmpl-float v0, v0, v1

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->a:Landroid/graphics/Path;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v4, v0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-float v5, v0

    .line 25
    iget v7, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->b:F

    .line 26
    .line 27
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    move v6, v7

    .line 32
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->a:Landroid/graphics/Path;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget v0, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->c:F

    .line 42
    .line 43
    iget v1, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->d:F

    .line 44
    .line 45
    iget v2, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->f:F

    .line 46
    .line 47
    iget v3, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->e:F

    .line 48
    .line 49
    const/16 v4, 0x8

    .line 50
    .line 51
    new-array v10, v4, [F

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    aput v0, v10, v4

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    aput v0, v10, v4

    .line 58
    .line 59
    const/4 v0, 0x2

    .line 60
    aput v1, v10, v0

    .line 61
    .line 62
    const/4 v0, 0x3

    .line 63
    aput v1, v10, v0

    .line 64
    .line 65
    const/4 v0, 0x4

    .line 66
    aput v2, v10, v0

    .line 67
    .line 68
    const/4 v0, 0x5

    .line 69
    aput v2, v10, v0

    .line 70
    .line 71
    const/4 v0, 0x6

    .line 72
    aput v3, v10, v0

    .line 73
    .line 74
    const/4 v0, 0x7

    .line 75
    aput v3, v10, v0

    .line 76
    .line 77
    iget-object v5, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->a:Landroid/graphics/Path;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    int-to-float v8, v0

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    int-to-float v9, v0

    .line 89
    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    const/4 v7, 0x0

    .line 93
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/ShortTvRoundedConstraintLayout;->a:Landroid/graphics/Path;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 99
    .line 100
    .line 101
    :goto_0
    :try_start_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :goto_1
    return-void
.end method
