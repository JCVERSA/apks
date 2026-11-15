.class public final Lcom/tn/lib/view/RoundedArrowImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001cR\u0016\u0010!\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001cR\u0016\u0010#\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001c\u00a8\u0006$"
    }
    d2 = {
        "Lcom/tn/lib/view/RoundedArrowImageView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "position",
        "",
        "setArrowPosition",
        "(F)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/graphics/Paint;",
        "d",
        "Landroid/graphics/Paint;",
        "paint",
        "Landroid/graphics/Path;",
        "e",
        "Landroid/graphics/Path;",
        "path",
        "f",
        "F",
        "arrowHeight",
        "g",
        "cornerRadius",
        "h",
        "arrowWidth",
        "i",
        "arrowPosition",
        "UI_psRelease"
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
.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Path;

.field private f:F

.field private g:F

.field private h:F

.field private i:F


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

    invoke-direct/range {v1 .. v6}, Lcom/tn/lib/view/RoundedArrowImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/tn/lib/view/RoundedArrowImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->d:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    const/high16 v0, 0x41000000    # 8.0f

    .line 7
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    .line 8
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    const/high16 v0, 0x41800000    # 16.0f

    .line 9
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->h:F

    const/high16 v0, 0x43480000    # 200.0f

    .line 10
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->i:F

    .line 11
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p2, :cond_0

    .line 12
    sget-object p3, Lcom/tn/lib/widget/R$styleable;->RoundedArrowImageView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget p2, Lcom/tn/lib/widget/R$styleable;->RoundedArrowImageView_arrowIVHeight:I

    iget p3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    .line 14
    sget p2, Lcom/tn/lib/widget/R$styleable;->RoundedArrowImageView_cornerRadius:I

    iget p3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    .line 15
    sget p2, Lcom/tn/lib/widget/R$styleable;->RoundedArrowImageView_arrowIVWidth:I

    iget p3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->h:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->h:F

    .line 16
    sget p2, Lcom/tn/lib/widget/R$styleable;->RoundedArrowImageView_arrowIVPositionOffset:I

    iget p3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->i:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->i:F

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
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
    invoke-direct {p0, p1, p2, p3}, Lcom/tn/lib/view/RoundedArrowImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    iget v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    .line 17
    .line 18
    sub-float/2addr v1, v2

    .line 19
    iget v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->i:F

    .line 20
    .line 21
    iget-object v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 27
    .line 28
    iget v4, p0, Lcom/tn/lib/view/RoundedArrowImageView;->h:F

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    int-to-float v5, v5

    .line 32
    div-float/2addr v4, v5

    .line 33
    sub-float v4, v2, v4

    .line 34
    .line 35
    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    .line 36
    .line 37
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 47
    .line 48
    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->h:F

    .line 49
    .line 50
    div-float/2addr v6, v5

    .line 51
    add-float/2addr v2, v6

    .line 52
    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    .line 53
    .line 54
    invoke-virtual {v3, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 58
    .line 59
    iget v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    .line 60
    .line 61
    sub-float v3, v0, v3

    .line 62
    .line 63
    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    .line 64
    .line 65
    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 69
    .line 70
    new-instance v3, Landroid/graphics/RectF;

    .line 71
    .line 72
    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    .line 73
    .line 74
    mul-float v7, v6, v5

    .line 75
    .line 76
    sub-float v7, v0, v7

    .line 77
    .line 78
    iget v8, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    .line 79
    .line 80
    mul-float/2addr v6, v5

    .line 81
    add-float/2addr v6, v8

    .line 82
    invoke-direct {v3, v7, v8, v0, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 83
    .line 84
    .line 85
    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 86
    .line 87
    const/high16 v7, 0x42b40000    # 90.0f

    .line 88
    .line 89
    invoke-virtual {v2, v3, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 93
    .line 94
    iget v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    .line 95
    .line 96
    sub-float v3, v1, v3

    .line 97
    .line 98
    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    .line 99
    .line 100
    add-float/2addr v3, v6

    .line 101
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 105
    .line 106
    new-instance v3, Landroid/graphics/RectF;

    .line 107
    .line 108
    iget v6, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    .line 109
    .line 110
    mul-float v8, v6, v5

    .line 111
    .line 112
    sub-float v8, v0, v8

    .line 113
    .line 114
    mul-float/2addr v6, v5

    .line 115
    sub-float v6, v1, v6

    .line 116
    .line 117
    iget v9, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    .line 118
    .line 119
    add-float/2addr v6, v9

    .line 120
    add-float/2addr v9, v1

    .line 121
    invoke-direct {v3, v8, v6, v0, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v3, v4, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 128
    .line 129
    iget v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    .line 130
    .line 131
    iget v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    .line 132
    .line 133
    add-float/2addr v3, v1

    .line 134
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 138
    .line 139
    new-instance v2, Landroid/graphics/RectF;

    .line 140
    .line 141
    iget v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    .line 142
    .line 143
    mul-float v6, v3, v5

    .line 144
    .line 145
    sub-float v6, v1, v6

    .line 146
    .line 147
    iget v8, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    .line 148
    .line 149
    add-float/2addr v6, v8

    .line 150
    mul-float/2addr v3, v5

    .line 151
    add-float/2addr v1, v8

    .line 152
    invoke-direct {v2, v4, v6, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v2, v7, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 159
    .line 160
    iget v1, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    .line 161
    .line 162
    iget v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    .line 163
    .line 164
    add-float/2addr v1, v2

    .line 165
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 169
    .line 170
    new-instance v1, Landroid/graphics/RectF;

    .line 171
    .line 172
    iget v2, p0, Lcom/tn/lib/view/RoundedArrowImageView;->f:F

    .line 173
    .line 174
    iget v3, p0, Lcom/tn/lib/view/RoundedArrowImageView;->g:F

    .line 175
    .line 176
    mul-float v6, v3, v5

    .line 177
    .line 178
    mul-float/2addr v3, v5

    .line 179
    add-float/2addr v3, v2

    .line 180
    invoke-direct {v1, v4, v2, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 181
    .line 182
    .line 183
    const/high16 v2, 0x43340000    # 180.0f

    .line 184
    .line 185
    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/tn/lib/view/RoundedArrowImageView;->e:Landroid/graphics/Path;

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 199
    .line 200
    .line 201
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public final setArrowPosition(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->k(FFF)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/tn/lib/view/RoundedArrowImageView;->i:F

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
