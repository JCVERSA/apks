.class public final Lcom/cloud/tmc/miniapp/widget/SwitchButton;
.super Landroid/view/View;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;,
        Lcom/cloud/tmc/miniapp/widget/SwitchButton$SavedState;
    }
.end annotation


# instance fields
.field public final OooO:F

.field public final OooO00o:Landroid/view/animation/AccelerateInterpolator;

.field public final OooO0O0:Landroid/graphics/Paint;

.field public final OooO0OO:Landroid/graphics/Path;

.field public final OooO0Oo:Landroid/graphics/Path;

.field public OooO0o:F

.field public final OooO0o0:Landroid/graphics/RectF;

.field public OooO0oO:F

.field public OooO0oo:Landroid/graphics/RadialGradient;

.field public final OooOO0:F

.field public OooOO0O:I

.field public OooOO0o:I

.field public OooOOO:Z

.field public OooOOO0:Z

.field public OooOOOO:Z

.field public OooOOOo:I

.field public OooOOo:I

.field public OooOOo0:I

.field public OooOOoo:I

.field public OooOo:F

.field public OooOo0:Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;

.field public OooOo00:I

.field public OooOo0O:F

.field public OooOo0o:F

.field public OooOoO:F

.field public OooOoO0:F

.field public OooOoOO:F

.field public OooOoo:F

.field public OooOoo0:F

.field public OooOooO:F

.field public OooOooo:F

.field public Oooo0:F

.field public Oooo000:F

.field public Oooo00O:F

.field public Oooo00o:F

.field public Oooo0O0:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 p4, 0x40000000    # 2.0f

    invoke-direct {p3, p4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO00o:Landroid/view/animation/AccelerateInterpolator;

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 8
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    .line 9
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    .line 10
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o0:Landroid/graphics/RectF;

    const p3, 0x3f2e147b    # 0.68f

    .line 11
    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO:F

    const p3, 0x3dcccccd    # 0.1f

    .line 12
    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0:F

    .line 13
    const-string p3, "#0081FF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOo:I

    .line 14
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOo0:I

    .line 15
    const-string p3, "#C2C6CE"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 16
    const-string p3, "#BFBFBF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOo:I

    .line 17
    const-string p3, "#333333"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo00:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 18
    invoke-virtual {p0, p4, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 19
    sget-object p3, Lcom/cloud/tmc/miniapp/R$styleable;->SwitchButton:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "context.obtainStyledAttr\u2026R.styleable.SwitchButton)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget p3, Lcom/cloud/tmc/miniapp/R$styleable;->SwitchButton_android_checked:I

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    .line 21
    sget p3, Lcom/cloud/tmc/miniapp/R$styleable;->SwitchButton_android_enabled:I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    iget-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    if-eqz p3, :cond_0

    const/4 p4, 0x3

    :cond_0
    iput p4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    .line 23
    iput p4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0O:I

    .line 24
    sget p3, Lcom/cloud/tmc/miniapp/R$color;->mini_color_switch_off_bg:I

    invoke-static {p1, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOoo:I

    .line 25
    sget p3, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-static {p1, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOo:I

    .line 26
    sget p3, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-static {p1, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOo0:I

    .line 27
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;ZZZI)V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    and-int/2addr p4, v0

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move p3, v1

    .line 7
    :cond_0
    const/4 p4, 0x3

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    move v2, p4

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    move v2, v1

    .line 13
    :goto_0
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    .line 14
    .line 15
    if-ne v2, v3, :cond_2

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_2
    const/4 v4, 0x0

    .line 19
    const/high16 v5, 0x3f800000    # 1.0f

    .line 20
    .line 21
    if-ne v2, p4, :cond_3

    .line 22
    .line 23
    if-eq v3, v1, :cond_4

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    if-eq v3, v6, :cond_4

    .line 27
    .line 28
    :cond_3
    if-ne v2, v1, :cond_6

    .line 29
    .line 30
    if-eq v3, p4, :cond_4

    .line 31
    .line 32
    if-ne v3, v0, :cond_6

    .line 33
    .line 34
    :cond_4
    if-eqz p3, :cond_5

    .line 35
    .line 36
    move v0, v5

    .line 37
    goto :goto_1

    .line 38
    :cond_5
    move v0, v4

    .line 39
    :goto_1
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o:F

    .line 40
    .line 41
    :cond_6
    if-eqz p3, :cond_7

    .line 42
    .line 43
    move v4, v5

    .line 44
    :cond_7
    iput v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    .line 45
    .line 46
    iget-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    .line 47
    .line 48
    if-nez p3, :cond_8

    .line 49
    .line 50
    if-ne v2, p4, :cond_8

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_8
    if-eqz p3, :cond_9

    .line 56
    .line 57
    if-ne v2, v1, :cond_9

    .line 58
    .line 59
    const/4 p3, 0x0

    .line 60
    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    .line 61
    .line 62
    :cond_9
    :goto_2
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0O:I

    .line 63
    .line 64
    iput v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 67
    .line 68
    .line 69
    if-eqz p2, :cond_a

    .line 70
    .line 71
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0:Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;

    .line 72
    .line 73
    if-eqz p2, :cond_a

    .line 74
    .line 75
    invoke-interface {p2, p0, p1}, Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;Z)V

    .line 76
    .line 77
    .line 78
    :cond_a
    :goto_3
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOO0:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    const/4 v3, 0x3

    .line 21
    if-eq v0, v3, :cond_2

    .line 22
    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    move v0, v1

    .line 29
    :goto_1
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 30
    .line 31
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOo:I

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOoo:I

    .line 44
    .line 45
    :goto_2
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    .line 49
    .line 50
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 53
    .line 54
    .line 55
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o:F

    .line 56
    .line 57
    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0:F

    .line 58
    .line 59
    sub-float/2addr v4, v6

    .line 60
    const/4 v7, 0x0

    .line 61
    cmpl-float v8, v4, v7

    .line 62
    .line 63
    if-lez v8, :cond_4

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    move v4, v7

    .line 67
    :goto_3
    iput v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o:F

    .line 68
    .line 69
    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    .line 70
    .line 71
    sub-float/2addr v8, v6

    .line 72
    cmpl-float v6, v8, v7

    .line 73
    .line 74
    if-lez v6, :cond_5

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    move v8, v7

    .line 78
    :goto_4
    iput v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    .line 79
    .line 80
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO00o:Landroid/view/animation/AccelerateInterpolator;

    .line 81
    .line 82
    invoke-virtual {v6, v4}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO00o:Landroid/view/animation/AccelerateInterpolator;

    .line 87
    .line 88
    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    .line 89
    .line 90
    invoke-virtual {v6, v8}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoO0:F

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    move v9, v4

    .line 99
    goto :goto_5

    .line 100
    :cond_6
    int-to-float v9, v1

    .line 101
    sub-float/2addr v9, v4

    .line 102
    :goto_5
    mul-float/2addr v8, v9

    .line 103
    iget v9, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0O:F

    .line 104
    .line 105
    iget v10, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0o:F

    .line 106
    .line 107
    sub-float/2addr v9, v10

    .line 108
    iget v10, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoOO:F

    .line 109
    .line 110
    sub-float/2addr v9, v10

    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    int-to-float v10, v1

    .line 114
    sub-float v4, v10, v4

    .line 115
    .line 116
    :cond_7
    mul-float/2addr v9, v4

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 118
    .line 119
    .line 120
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0o:F

    .line 121
    .line 122
    add-float/2addr v4, v9

    .line 123
    iget v9, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo:F

    .line 124
    .line 125
    invoke-virtual {p1, v8, v8, v4, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_8

    .line 133
    .line 134
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 135
    .line 136
    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOoo:I

    .line 137
    .line 138
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_8
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 143
    .line 144
    const-string v8, "#BBBBBB"

    .line 145
    .line 146
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    .line 152
    .line 153
    :goto_6
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    .line 154
    .line 155
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 156
    .line 157
    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 164
    .line 165
    .line 166
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    .line 167
    .line 168
    iget v8, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0O:I

    .line 169
    .line 170
    sub-int v8, v4, v8

    .line 171
    .line 172
    const/4 v9, -0x3

    .line 173
    const/4 v10, 0x2

    .line 174
    if-eq v8, v9, :cond_14

    .line 175
    .line 176
    const/4 v9, -0x2

    .line 177
    if-eq v8, v9, :cond_11

    .line 178
    .line 179
    const/4 v9, -0x1

    .line 180
    if-eq v8, v9, :cond_f

    .line 181
    .line 182
    if-eq v8, v1, :cond_d

    .line 183
    .line 184
    if-eq v8, v10, :cond_b

    .line 185
    .line 186
    if-eq v8, v3, :cond_a

    .line 187
    .line 188
    if-ne v4, v1, :cond_9

    .line 189
    .line 190
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    .line 191
    .line 192
    goto :goto_9

    .line 193
    :cond_9
    if-ne v4, v3, :cond_13

    .line 194
    .line 195
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    .line 196
    .line 197
    goto :goto_9

    .line 198
    :cond_a
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    .line 199
    .line 200
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    .line 201
    .line 202
    :goto_7
    sub-float v4, v3, v4

    .line 203
    .line 204
    mul-float/2addr v4, v6

    .line 205
    sub-float/2addr v3, v4

    .line 206
    goto :goto_9

    .line 207
    :cond_b
    if-ne v4, v3, :cond_c

    .line 208
    .line 209
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    .line 210
    .line 211
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_c
    if-ne v4, v2, :cond_13

    .line 215
    .line 216
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00O:F

    .line 217
    .line 218
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_d
    if-ne v4, v10, :cond_e

    .line 222
    .line 223
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    .line 224
    .line 225
    goto :goto_9

    .line 226
    :cond_e
    if-ne v4, v3, :cond_13

    .line 227
    .line 228
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    .line 229
    .line 230
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00O:F

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_f
    if-ne v4, v2, :cond_10

    .line 234
    .line 235
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00O:F

    .line 236
    .line 237
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    .line 238
    .line 239
    :goto_8
    sub-float/2addr v4, v3

    .line 240
    mul-float/2addr v4, v6

    .line 241
    add-float/2addr v3, v4

    .line 242
    goto :goto_9

    .line 243
    :cond_10
    if-ne v4, v1, :cond_13

    .line 244
    .line 245
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    .line 246
    .line 247
    goto :goto_9

    .line 248
    :cond_11
    if-ne v4, v1, :cond_12

    .line 249
    .line 250
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    .line 251
    .line 252
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00O:F

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_12
    if-ne v4, v10, :cond_13

    .line 256
    .line 257
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00o:F

    .line 258
    .line 259
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_13
    move v3, v7

    .line 263
    goto :goto_9

    .line 264
    :cond_14
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    .line 265
    .line 266
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :goto_9
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    .line 270
    .line 271
    sub-float/2addr v3, v4

    .line 272
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0O0:F

    .line 273
    .line 274
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 275
    .line 276
    .line 277
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    .line 278
    .line 279
    if-eq v3, v2, :cond_15

    .line 280
    .line 281
    if-ne v3, v10, :cond_16

    .line 282
    .line 283
    :cond_15
    int-to-float v1, v1

    .line 284
    sub-float v6, v1, v6

    .line 285
    .line 286
    :cond_16
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    .line 287
    .line 288
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 289
    .line 290
    .line 291
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o0:Landroid/graphics/RectF;

    .line 292
    .line 293
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooO:F

    .line 294
    .line 295
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo0:F

    .line 296
    .line 297
    int-to-float v4, v10

    .line 298
    div-float/2addr v3, v4

    .line 299
    add-float/2addr v2, v3

    .line 300
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 301
    .line 302
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooo:F

    .line 303
    .line 304
    sub-float/2addr v2, v3

    .line 305
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 306
    .line 307
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    .line 308
    .line 309
    const/high16 v3, 0x42b40000    # 90.0f

    .line 310
    .line 311
    const/high16 v8, 0x43340000    # 180.0f

    .line 312
    .line 313
    invoke-virtual {v2, v1, v3, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 314
    .line 315
    .line 316
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o0:Landroid/graphics/RectF;

    .line 317
    .line 318
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooO:F

    .line 319
    .line 320
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoO:F

    .line 321
    .line 322
    mul-float/2addr v6, v3

    .line 323
    add-float/2addr v2, v6

    .line 324
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo0:F

    .line 325
    .line 326
    div-float/2addr v3, v4

    .line 327
    add-float/2addr v2, v3

    .line 328
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 329
    .line 330
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooo:F

    .line 331
    .line 332
    add-float/2addr v6, v2

    .line 333
    sub-float/2addr v6, v3

    .line 334
    iput v6, v1, Landroid/graphics/RectF;->right:F

    .line 335
    .line 336
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    .line 337
    .line 338
    const/high16 v3, 0x43870000    # 270.0f

    .line 339
    .line 340
    invoke-virtual {v2, v1, v3, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 341
    .line 342
    .line 343
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    .line 344
    .line 345
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 346
    .line 347
    .line 348
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOO:Z

    .line 349
    .line 350
    if-eqz v1, :cond_17

    .line 351
    .line 352
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 353
    .line 354
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 355
    .line 356
    .line 357
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 358
    .line 359
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oo:Landroid/graphics/RadialGradient;

    .line 360
    .line 361
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 362
    .line 363
    .line 364
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    .line 365
    .line 366
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 367
    .line 368
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 369
    .line 370
    .line 371
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 372
    .line 373
    const/4 v2, 0x0

    .line 374
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 375
    .line 376
    .line 377
    :cond_17
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0O0:F

    .line 378
    .line 379
    neg-float v1, v1

    .line 380
    invoke-virtual {p1, v7, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 381
    .line 382
    .line 383
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo:F

    .line 384
    .line 385
    div-float/2addr v1, v4

    .line 386
    const v2, 0x3f7ae148    # 0.98f

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 390
    .line 391
    .line 392
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 393
    .line 394
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 395
    .line 396
    .line 397
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 398
    .line 399
    const-string v2, "#FFFFFF"

    .line 400
    .line 401
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 406
    .line 407
    .line 408
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    .line 409
    .line 410
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 411
    .line 412
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 413
    .line 414
    .line 415
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 416
    .line 417
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 418
    .line 419
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 420
    .line 421
    .line 422
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 423
    .line 424
    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo0:F

    .line 425
    .line 426
    const/high16 v3, 0x3f000000    # 0.5f

    .line 427
    .line 428
    mul-float/2addr v2, v3

    .line 429
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 430
    .line 431
    .line 432
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 433
    .line 434
    if-eqz v0, :cond_18

    .line 435
    .line 436
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOo0:I

    .line 437
    .line 438
    goto :goto_a

    .line 439
    :cond_18
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOo:I

    .line 440
    .line 441
    :goto_a
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    .line 443
    .line 444
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0Oo:Landroid/graphics/Path;

    .line 445
    .line 446
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 447
    .line 448
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 452
    .line 453
    .line 454
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0O0:Landroid/graphics/Paint;

    .line 455
    .line 456
    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 457
    .line 458
    .line 459
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o:F

    .line 460
    .line 461
    cmpl-float p1, p1, v7

    .line 462
    .line 463
    if-gtz p1, :cond_19

    .line 464
    .line 465
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    .line 466
    .line 467
    cmpl-float p1, p1, v7

    .line 468
    .line 469
    if-lez p1, :cond_1a

    .line 470
    .line 471
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 472
    .line 473
    .line 474
    :cond_1a
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    const/high16 v2, -0x80000000

    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget v0, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_56:I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    add-float/2addr p1, v0

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-float v0, v0

    .line 35
    add-float/2addr p1, v0

    .line 36
    float-to-int p1, p1

    .line 37
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eq v0, v2, :cond_1

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    int-to-float p2, p2

    .line 55
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO:F

    .line 56
    .line 57
    mul-float/2addr p2, v0

    .line 58
    float-to-int p2, p2

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v0, p2

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    add-int/2addr p2, v0

    .line 69
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    const-string v0, "null cannot be cast to non-null type com.cloud.tmc.miniapp.widget.SwitchButton.SavedState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/SwitchButton$SavedState;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/widget/SwitchButton$SavedState;->OooO00o:Z

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x1

    .line 24
    :goto_0
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/SwitchButton$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/widget/SwitchButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOOO:Z

    .line 11
    .line 12
    iput-boolean v0, v1, Lcom/cloud/tmc/miniapp/widget/SwitchButton$SavedState;->OooO00o:Z

    .line 13
    .line 14
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    add-int/2addr p4, p3

    .line 10
    const/4 p3, 0x1

    .line 11
    if-le p1, p4, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v0, p4

    .line 22
    if-le p2, v0, :cond_0

    .line 23
    .line 24
    move p4, p3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p4, 0x0

    .line 27
    :goto_0
    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOO0:Z

    .line 28
    .line 29
    if-eqz p4, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 32
    .line 33
    .line 34
    move-result p4

    .line 35
    sub-int p4, p1, p4

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sub-int/2addr p4, v0

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sub-int/2addr p2, v0

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sub-int/2addr p2, v0

    .line 52
    int-to-float p4, p4

    .line 53
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO:F

    .line 54
    .line 55
    mul-float v1, p4, v0

    .line 56
    .line 57
    int-to-float p2, p2

    .line 58
    cmpg-float v1, v1, p2

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    if-gez v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    sub-int/2addr p1, v1

    .line 72
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO:F

    .line 73
    .line 74
    mul-float/2addr p4, v1

    .line 75
    sub-float/2addr p2, p4

    .line 76
    float-to-int p2, p2

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 78
    .line 79
    .line 80
    move-result p4

    .line 81
    div-int/2addr p2, v2

    .line 82
    add-int/2addr p4, p2

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    sub-int/2addr v1, v3

    .line 92
    sub-int/2addr v1, p2

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    div-float/2addr p2, v0

    .line 95
    sub-float/2addr p4, p2

    .line 96
    float-to-int p1, p4

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    div-int/2addr p1, v2

    .line 102
    add-int v0, p2, p1

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 109
    .line 110
    .line 111
    move-result p4

    .line 112
    sub-int/2addr p2, p4

    .line 113
    sub-int p1, p2, p1

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    sub-int v1, p2, v1

    .line 128
    .line 129
    :goto_1
    sub-int p2, v1, p4

    .line 130
    .line 131
    int-to-float p2, p2

    .line 132
    const v3, 0x3d8f5c29    # 0.07f

    .line 133
    .line 134
    .line 135
    mul-float/2addr p2, v3

    .line 136
    float-to-int p2, p2

    .line 137
    int-to-float p2, p2

    .line 138
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0O0:F

    .line 139
    .line 140
    int-to-float v0, v0

    .line 141
    int-to-float p4, p4

    .line 142
    add-float/2addr p4, p2

    .line 143
    int-to-float p1, p1

    .line 144
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0O:F

    .line 145
    .line 146
    int-to-float v1, v1

    .line 147
    sub-float/2addr v1, p2

    .line 148
    sub-float p2, v1, p4

    .line 149
    .line 150
    add-float v3, p1, v0

    .line 151
    .line 152
    int-to-float v2, v2

    .line 153
    div-float/2addr v3, v2

    .line 154
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0o:F

    .line 155
    .line 156
    add-float v3, v1, p4

    .line 157
    .line 158
    div-float v6, v3, v2

    .line 159
    .line 160
    iput v6, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo:F

    .line 161
    .line 162
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooO:F

    .line 163
    .line 164
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo:F

    .line 165
    .line 166
    add-float v3, v0, p2

    .line 167
    .line 168
    iput v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooo:F

    .line 169
    .line 170
    div-float v4, p2, v2

    .line 171
    .line 172
    const v5, 0x3f733333    # 0.95f

    .line 173
    .line 174
    .line 175
    mul-float/2addr v5, v4

    .line 176
    iput v5, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoOO:F

    .line 177
    .line 178
    const v7, 0x3e4ccccd    # 0.2f

    .line 179
    .line 180
    .line 181
    mul-float/2addr v7, v5

    .line 182
    iput v7, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoO:F

    .line 183
    .line 184
    sub-float/2addr v4, v5

    .line 185
    mul-float/2addr v4, v2

    .line 186
    iput v4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo0:F

    .line 187
    .line 188
    sub-float/2addr p1, p2

    .line 189
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo000:F

    .line 190
    .line 191
    sub-float/2addr p1, v7

    .line 192
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00O:F

    .line 193
    .line 194
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo0:F

    .line 195
    .line 196
    add-float/2addr v7, v0

    .line 197
    iput v7, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->Oooo00o:F

    .line 198
    .line 199
    int-to-float p1, p3

    .line 200
    div-float/2addr v4, p2

    .line 201
    sub-float/2addr p1, v4

    .line 202
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoO0:F

    .line 203
    .line 204
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 207
    .line 208
    .line 209
    new-instance p1, Landroid/graphics/RectF;

    .line 210
    .line 211
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 212
    .line 213
    .line 214
    iput p4, p1, Landroid/graphics/RectF;->top:F

    .line 215
    .line 216
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 217
    .line 218
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 219
    .line 220
    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 221
    .line 222
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    .line 223
    .line 224
    const/high16 v0, 0x42b40000    # 90.0f

    .line 225
    .line 226
    const/high16 v3, 0x43340000    # 180.0f

    .line 227
    .line 228
    invoke-virtual {p3, p1, v0, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 229
    .line 230
    .line 231
    iget p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0O:F

    .line 232
    .line 233
    sub-float p2, p3, p2

    .line 234
    .line 235
    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 236
    .line 237
    iput p3, p1, Landroid/graphics/RectF;->right:F

    .line 238
    .line 239
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    .line 240
    .line 241
    const/high16 p3, 0x43870000    # 270.0f

    .line 242
    .line 243
    invoke-virtual {p2, p1, p3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0OO:Landroid/graphics/Path;

    .line 247
    .line 248
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o0:Landroid/graphics/RectF;

    .line 252
    .line 253
    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooO:F

    .line 254
    .line 255
    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 256
    .line 257
    iget p3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOooo:F

    .line 258
    .line 259
    iput p3, p1, Landroid/graphics/RectF;->right:F

    .line 260
    .line 261
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoo0:F

    .line 262
    .line 263
    div-float/2addr v0, v2

    .line 264
    add-float/2addr p4, v0

    .line 265
    iput p4, p1, Landroid/graphics/RectF;->top:F

    .line 266
    .line 267
    sub-float/2addr v1, v0

    .line 268
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 269
    .line 270
    add-float/2addr p3, p2

    .line 271
    div-float v5, p3, v2

    .line 272
    .line 273
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo00:I

    .line 274
    .line 275
    shr-int/lit8 p2, p1, 0x10

    .line 276
    .line 277
    and-int/lit16 p2, p2, 0xff

    .line 278
    .line 279
    shr-int/lit8 p3, p1, 0x8

    .line 280
    .line 281
    and-int/lit16 p3, p3, 0xff

    .line 282
    .line 283
    and-int/lit16 p1, p1, 0xff

    .line 284
    .line 285
    new-instance p4, Landroid/graphics/RadialGradient;

    .line 286
    .line 287
    iget v7, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOoOO:F

    .line 288
    .line 289
    const/16 v0, 0xc8

    .line 290
    .line 291
    invoke-static {v0, p2, p3, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    const/16 v0, 0x19

    .line 296
    .line 297
    invoke-static {v0, p2, p3, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 302
    .line 303
    move-object v4, p4

    .line 304
    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 305
    .line 306
    .line 307
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oo:Landroid/graphics/RadialGradient;

    .line 308
    .line 309
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    if-ne v0, v1, :cond_4

    .line 22
    .line 23
    :cond_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0o:F

    .line 24
    .line 25
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    .line 26
    .line 27
    mul-float/2addr v0, v3

    .line 28
    const/4 v3, 0x0

    .line 29
    cmpg-float v0, v0, v3

    .line 30
    .line 31
    if-nez v0, :cond_4

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eq p1, v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0o:I

    .line 41
    .line 42
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOO0O:I

    .line 43
    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    .line 46
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO0oO:F

    .line 47
    .line 48
    const/4 v0, 0x4

    .line 49
    const/4 v3, 0x0

    .line 50
    if-eq p1, v1, :cond_3

    .line 51
    .line 52
    if-eq p1, v2, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {p0, v3, v3, v3, v0}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;ZZZI)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0:Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-interface {p1, p0, v3}, Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-static {p0, v1, v3, v3, v0}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;ZZZI)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0:Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-interface {p1, p0, v1}, Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;Z)V

    .line 74
    .line 75
    .line 76
    :cond_4
    :goto_0
    return v1
.end method

.method public final setChecked(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-static {p0, p1, v2, v0, v1}, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooO00o(Lcom/cloud/tmc/miniapp/widget/SwitchButton;ZZZI)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setOnCheckedChangeListener(Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOo0:Lcom/cloud/tmc/miniapp/widget/SwitchButton$OooO00o;

    .line 2
    .line 3
    return-void
.end method

.method public final setShadow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/SwitchButton;->OooOOO:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
