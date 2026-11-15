.class public final Lcom/transsion/ad/view/ArcEdgeLayout;
.super Landroid/view/ViewGroup;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;,
        Lcom/transsion/ad/view/ArcEdgeLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001>B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ/\u0010\u0011\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J7\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001f\u0010\"\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\"\u0010#J\u0015\u0010&\u001a\u00020\n2\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008&\u0010\'J\u0015\u0010*\u001a\u00020\n2\u0006\u0010)\u001a\u00020(\u00a2\u0006\u0004\u0008*\u0010+R\u0016\u0010-\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010,R\u0016\u0010/\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0014\u00107\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0014\u00109\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00106R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<\u00a8\u0006?"
    }
    d2 = {
        "Lcom/transsion/ad/view/ArcEdgeLayout;",
        "Landroid/view/ViewGroup;",
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
        "onDraw",
        "",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onLayout",
        "(ZIIII)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;",
        "position",
        "setArcPosition",
        "(Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;)V",
        "",
        "height",
        "setArcHeight",
        "(F)V",
        "Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;",
        "arcPosition",
        "F",
        "arcHeight",
        "Landroid/graphics/Path;",
        "c",
        "Landroid/graphics/Path;",
        "path",
        "Landroid/graphics/RectF;",
        "d",
        "Landroid/graphics/RectF;",
        "rect",
        "e",
        "arcRect",
        "Landroid/graphics/Paint;",
        "f",
        "Landroid/graphics/Paint;",
        "paint",
        "ArcPosition",
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


# instance fields
.field private a:Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;

.field private b:F

.field private final c:Landroid/graphics/Path;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/Paint;


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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/view/ArcEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/view/ArcEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget-object p3, Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;->TOP:Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;

    iput-object p3, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->a:Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;

    .line 6
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 7
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->d:Landroid/graphics/RectF;

    .line 8
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->e:Landroid/graphics/RectF;

    .line 9
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v1, -0x1

    .line 10
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    iput-object p3, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->f:Landroid/graphics/Paint;

    const/4 p3, 0x2

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 15
    sget-object p3, Lcom/transsion/ad/R$styleable;->ArcEdgeLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 16
    :try_start_0
    invoke-static {}, Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;->values()[Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;

    move-result-object p2

    .line 17
    sget p3, Lcom/transsion/ad/R$styleable;->ArcEdgeLayout_arcPosition:I

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v1, 0x3

    .line 19
    invoke-static {p3, v0, v1}, Lkotlin/ranges/RangesKt;->l(III)I

    move-result p3

    aget-object p2, p2, p3

    .line 20
    iput-object p2, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->a:Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;

    .line 21
    sget p2, Lcom/transsion/ad/R$styleable;->ArcEdgeLayout_arcHeight:I

    const/high16 p3, 0x42200000    # 40.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/view/ArcEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->a:Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;

    .line 7
    .line 8
    sget-object v1, Lcom/transsion/ad/view/ArcEdgeLayout$a;->a:[I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    aget v0, v1, v0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/high16 v3, 0x43340000    # 180.0f

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x0

    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    if-eq v0, v4, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->e:Landroid/graphics/RectF;

    .line 33
    .line 34
    iget v1, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 35
    .line 36
    neg-float v6, v1

    .line 37
    int-to-float v4, v4

    .line 38
    mul-float/2addr v1, v4

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    int-to-float v4, v4

    .line 44
    iget v7, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 45
    .line 46
    add-float/2addr v4, v7

    .line 47
    invoke-virtual {v0, v5, v6, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 51
    .line 52
    iget v1, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 53
    .line 54
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    int-to-float v1, v1

    .line 64
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    int-to-float v1, v1

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    int-to-float v4, v4

    .line 79
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 83
    .line 84
    iget v1, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    int-to-float v4, v4

    .line 91
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->e:Landroid/graphics/RectF;

    .line 97
    .line 98
    const/high16 v4, 0x42b40000    # 90.0f

    .line 99
    .line 100
    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 106
    .line 107
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->e:Landroid/graphics/RectF;

    .line 112
    .line 113
    iget v1, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 114
    .line 115
    neg-float v1, v1

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    int-to-float v6, v6

    .line 121
    iget v7, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 122
    .line 123
    int-to-float v4, v4

    .line 124
    mul-float/2addr v7, v4

    .line 125
    sub-float/2addr v6, v7

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    int-to-float v4, v4

    .line 131
    iget v7, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 132
    .line 133
    add-float/2addr v4, v7

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    int-to-float v7, v7

    .line 139
    invoke-virtual {v0, v1, v6, v4, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 143
    .line 144
    invoke-virtual {v0, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    int-to-float v1, v1

    .line 154
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    int-to-float v1, v1

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    int-to-float v4, v4

    .line 169
    iget v6, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 170
    .line 171
    sub-float/2addr v4, v6

    .line 172
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 176
    .line 177
    iget-object v1, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->e:Landroid/graphics/RectF;

    .line 178
    .line 179
    invoke-virtual {v0, v1, v5, v3, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->e:Landroid/graphics/RectF;

    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    int-to-float v1, v1

    .line 191
    iget v6, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 192
    .line 193
    int-to-float v4, v4

    .line 194
    mul-float/2addr v4, v6

    .line 195
    sub-float/2addr v1, v4

    .line 196
    neg-float v4, v6

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    int-to-float v6, v6

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    int-to-float v7, v7

    .line 207
    iget v8, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 208
    .line 209
    add-float/2addr v7, v8

    .line 210
    invoke-virtual {v0, v1, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 214
    .line 215
    invoke-virtual {v0, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 219
    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    int-to-float v1, v1

    .line 225
    iget v4, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 226
    .line 227
    sub-float/2addr v1, v4

    .line 228
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 232
    .line 233
    iget-object v1, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->e:Landroid/graphics/RectF;

    .line 234
    .line 235
    const/high16 v4, 0x43870000    # 270.0f

    .line 236
    .line 237
    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 241
    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    int-to-float v1, v1

    .line 247
    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 248
    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->e:Landroid/graphics/RectF;

    .line 252
    .line 253
    iget v1, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 254
    .line 255
    neg-float v1, v1

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    int-to-float v6, v6

    .line 261
    iget v7, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 262
    .line 263
    add-float/2addr v6, v7

    .line 264
    int-to-float v4, v4

    .line 265
    mul-float/2addr v7, v4

    .line 266
    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 270
    .line 271
    iget v1, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 272
    .line 273
    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 277
    .line 278
    iget-object v1, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->e:Landroid/graphics/RectF;

    .line 279
    .line 280
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 284
    .line 285
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    int-to-float v1, v1

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    int-to-float v2, v2

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 296
    .line 297
    .line 298
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 299
    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    int-to-float v1, v1

    .line 305
    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 306
    .line 307
    .line 308
    :goto_0
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 309
    .line 310
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 311
    .line 312
    .line 313
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->c:Landroid/graphics/Path;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->f:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    move p3, p2

    .line 7
    :goto_0
    if-ge p3, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 p3, p3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->d:Landroid/graphics/RectF;

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
    invoke-direct {p0}, Lcom/transsion/ad/view/ArcEdgeLayout;->a()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setArcHeight(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput p1, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->b:F

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/transsion/ad/view/ArcEdgeLayout;->a()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public final setArcPosition(Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;)V
    .locals 1

    .line 1
    const-string v0, "position"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->a:Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lcom/transsion/ad/view/ArcEdgeLayout;->a:Lcom/transsion/ad/view/ArcEdgeLayout$ArcPosition;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsion/ad/view/ArcEdgeLayout;->a()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
