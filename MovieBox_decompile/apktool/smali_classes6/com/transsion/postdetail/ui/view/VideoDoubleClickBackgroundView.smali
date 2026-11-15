.class public final Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;
.super Landroid/view/View;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bB+\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\rJ)\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "",
        "a",
        "(Landroid/util/AttributeSet;II)V",
        "",
        "isLeft",
        "setLeftStyle",
        "(Z)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "mPaint",
        "Landroid/graphics/RectF;",
        "b",
        "Landroid/graphics/RectF;",
        "rectF",
        "c",
        "Z",
        "PostDetail_psRelease"
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
.field private final a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v0}, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p2, p1, p1}, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p2, p3, p1}, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    .line 16
    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final a(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    sget p3, Lcom/transsion/postdetail/R$color;->video_double_click_bg:I

    .line 14
    .line 15
    invoke-static {p2, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v7, v1

    .line 19
    const/high16 v1, 0x40000000    # 2.0f

    .line 20
    .line 21
    div-float v2, v0, v1

    .line 22
    .line 23
    float-to-double v3, v7

    .line 24
    const/4 v5, 0x2

    .line 25
    int-to-double v8, v5

    .line 26
    div-double/2addr v3, v8

    .line 27
    float-to-double v10, v2

    .line 28
    div-double/2addr v3, v10

    .line 29
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    mul-double/2addr v3, v8

    .line 38
    double-to-float v4, v3

    .line 39
    iget-boolean v3, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    .line 40
    .line 41
    const/4 v8, 0x4

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    new-instance v0, Landroid/graphics/RectF;

    .line 49
    .line 50
    neg-float v3, v2

    .line 51
    int-to-float v5, v5

    .line 52
    div-float v5, v7, v5

    .line 53
    .line 54
    add-float v6, v3, v5

    .line 55
    .line 56
    sub-float v5, v2, v5

    .line 57
    .line 58
    add-float/2addr v5, v7

    .line 59
    invoke-direct {v0, v3, v6, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    .line 63
    .line 64
    :cond_0
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    .line 65
    .line 66
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    neg-float v0, v4

    .line 70
    div-float v3, v0, v1

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    .line 74
    .line 75
    move-object v1, p1

    .line 76
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 77
    .line 78
    .line 79
    mul-double/2addr v10, v10

    .line 80
    mul-float v0, v7, v7

    .line 81
    .line 82
    int-to-float v1, v8

    .line 83
    div-float/2addr v0, v1

    .line 84
    float-to-double v0, v0

    .line 85
    sub-double/2addr v10, v0

    .line 86
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    double-to-float v4, v0

    .line 91
    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    const/4 v3, 0x0

    .line 95
    move-object v1, p1

    .line 96
    move v5, v7

    .line 97
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    .line 102
    .line 103
    if-nez v3, :cond_2

    .line 104
    .line 105
    new-instance v3, Landroid/graphics/RectF;

    .line 106
    .line 107
    neg-float v6, v2

    .line 108
    int-to-float v5, v5

    .line 109
    div-float v5, v7, v5

    .line 110
    .line 111
    add-float/2addr v6, v5

    .line 112
    add-float v9, v0, v2

    .line 113
    .line 114
    sub-float v5, v2, v5

    .line 115
    .line 116
    add-float/2addr v5, v7

    .line 117
    invoke-direct {v3, v2, v6, v9, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 118
    .line 119
    .line 120
    iput-object v3, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    .line 121
    .line 122
    :cond_2
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    .line 123
    .line 124
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    const/16 v3, 0xb4

    .line 128
    .line 129
    int-to-float v3, v3

    .line 130
    div-float v1, v4, v1

    .line 131
    .line 132
    sub-float/2addr v3, v1

    .line 133
    const/4 v5, 0x0

    .line 134
    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    .line 135
    .line 136
    move-object v1, p1

    .line 137
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 138
    .line 139
    .line 140
    mul-double/2addr v10, v10

    .line 141
    mul-float v1, v7, v7

    .line 142
    .line 143
    int-to-float v2, v8

    .line 144
    div-float/2addr v1, v2

    .line 145
    float-to-double v1, v1

    .line 146
    sub-double/2addr v10, v1

    .line 147
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 148
    .line 149
    .line 150
    move-result-wide v1

    .line 151
    double-to-float v1, v1

    .line 152
    sub-float v2, v0, v1

    .line 153
    .line 154
    const/4 v3, 0x0

    .line 155
    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->a:Landroid/graphics/Paint;

    .line 156
    .line 157
    move-object v1, p1

    .line 158
    move v4, v0

    .line 159
    move v5, v7

    .line 160
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 161
    .line 162
    .line 163
    :goto_0
    return-void
.end method

.method public final setLeftStyle(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->c:Z

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->b:Landroid/graphics/RectF;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
