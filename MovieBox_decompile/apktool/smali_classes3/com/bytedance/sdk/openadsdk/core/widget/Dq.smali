.class public Lcom/bytedance/sdk/openadsdk/core/widget/Dq;
.super Landroid/view/View;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;
    }
.end annotation


# static fields
.field private static final Sj:[I


# instance fields
.field private Dq:I

.field private final EjP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private final HiB:Landroid/graphics/Paint;

.field private Jcg:I

.field private final TKC:Landroid/graphics/RectF;

.field private final sP:Landroid/graphics/RectF;

.field private uA:I

.field private final vS:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "#1AFFFFFF"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "#4DFFFFFF"

    .line 8
    .line 9
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "#99FFFFFF"

    .line 14
    .line 15
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    filled-new-array {v0, v1, v2}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Sj:[I

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->sP:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->TKC:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->EjP:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance p1, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->vS:Landroid/graphics/Paint;

    .line 31
    .line 32
    new-instance p1, Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->HiB:Landroid/graphics/Paint;

    .line 38
    .line 39
    const-string v0, "#D9D9D9"

    .line 40
    .line 41
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private Sj()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Dq:I

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    mul-float/2addr v1, v2

    .line 16
    const/high16 v2, 0x42c80000    # 100.0f

    .line 17
    .line 18
    div-float/2addr v1, v2

    .line 19
    int-to-float v0, v0

    .line 20
    mul-float/2addr v1, v0

    .line 21
    float-to-int v0, v1

    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->TKC:Landroid/graphics/RectF;

    .line 23
    .line 24
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->uA:I

    .line 25
    .line 26
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->sP:Landroid/graphics/RectF;

    .line 5
    .line 6
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    .line 7
    .line 8
    int-to-float v2, v1

    .line 9
    int-to-float v1, v1

    .line 10
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->HiB:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->TKC:Landroid/graphics/RectF;

    .line 16
    .line 17
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    .line 18
    .line 19
    int-to-float v2, v1

    .line 20
    int-to-float v1, v1

    .line 21
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->vS:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->TKC:Landroid/graphics/RectF;

    .line 31
    .line 32
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 33
    .line 34
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->uA:I

    .line 35
    .line 36
    int-to-float v2, v2

    .line 37
    sub-float/2addr v1, v2

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->EjP:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;

    .line 59
    .line 60
    iget v3, v2, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;->TKC:F

    .line 61
    .line 62
    iget v4, v2, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;->EjP:F

    .line 63
    .line 64
    iget v5, v2, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;->sP:F

    .line 65
    .line 66
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;->Sj:Landroid/graphics/Paint;

    .line 67
    .line 68
    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    div-int/lit8 p3, p2, 0x2

    .line 5
    .line 6
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0x5

    .line 9
    .line 10
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->uA:I

    .line 11
    .line 12
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->sP:Landroid/graphics/RectF;

    .line 13
    .line 14
    int-to-float v3, p1

    .line 15
    int-to-float p1, p2

    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p3, p2, p2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    .line 19
    .line 20
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->TKC:Landroid/graphics/RectF;

    .line 21
    .line 22
    invoke-virtual {p3, p2, p2, p2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    .line 24
    .line 25
    new-instance p2, Landroid/graphics/LinearGradient;

    .line 26
    .line 27
    const-string p3, "#90C0FF"

    .line 28
    .line 29
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    const-string p4, "#196BE4"

    .line 34
    .line 35
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    filled-new-array {p3, p4}, [I

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const/4 v6, 0x0

    .line 44
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    move-object v0, p2

    .line 49
    move v4, p1

    .line 50
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 51
    .line 52
    .line 53
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->vS:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->EjP:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 61
    .line 62
    .line 63
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    .line 64
    .line 65
    int-to-float p2, p2

    .line 66
    const/high16 p3, 0x40800000    # 4.0f

    .line 67
    .line 68
    div-float/2addr p2, p3

    .line 69
    sget-object p3, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Sj:[I

    .line 70
    .line 71
    array-length p4, p3

    .line 72
    const/4 v0, 0x0

    .line 73
    :goto_0
    if-ge v0, p4, :cond_0

    .line 74
    .line 75
    aget v1, p3, v0

    .line 76
    .line 77
    new-instance v2, Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->EjP:Ljava/util/ArrayList;

    .line 86
    .line 87
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;

    .line 88
    .line 89
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    .line 90
    .line 91
    int-to-float v4, v4

    .line 92
    const/high16 v5, 0x40000000    # 2.0f

    .line 93
    .line 94
    div-float/2addr v4, v5

    .line 95
    div-float v6, p1, v5

    .line 96
    .line 97
    invoke-direct {v3, v2, v4, p2, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/Dq$Sj;-><init>(Landroid/graphics/Paint;FFF)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Jcg:I

    .line 104
    .line 105
    int-to-float v1, v1

    .line 106
    div-float/2addr v1, v5

    .line 107
    const/high16 v2, 0x40400000    # 3.0f

    .line 108
    .line 109
    mul-float/2addr v1, v2

    .line 110
    add-float/2addr p2, v1

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Sj()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Dq:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-gez p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/16 v1, 0x64

    .line 11
    .line 12
    if-le p1, v1, :cond_2

    .line 13
    .line 14
    move p1, v1

    .line 15
    :cond_2
    :goto_0
    if-ne v0, p1, :cond_3

    .line 16
    .line 17
    return-void

    .line 18
    :cond_3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Dq:I

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->Sj()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
