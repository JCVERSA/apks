.class public final Lcom/transsion/baseui/widget/d;
.super Landroid/text/style/ImageSpan;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baseui/widget/d$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/baseui/widget/d$a;

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/baseui/widget/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/baseui/widget/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/baseui/widget/d;->a:Lcom/transsion/baseui/widget/d$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/baseui/widget/d;->b:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    const-string p3, "canvas"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "text"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "paint"

    .line 12
    .line 13
    invoke-static {p9, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    sub-int/2addr p8, p4

    .line 34
    iget p4, p0, Landroid/text/style/ImageSpan;->mVerticalAlignment:I

    .line 35
    .line 36
    const/4 p6, 0x1

    .line 37
    if-ne p4, p6, :cond_0

    .line 38
    .line 39
    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 40
    .line 41
    sub-int/2addr p8, p3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p6, 0x2

    .line 44
    if-ne p4, p6, :cond_1

    .line 45
    .line 46
    iget p4, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 47
    .line 48
    add-int/2addr p4, p7

    .line 49
    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 50
    .line 51
    add-int/2addr p7, p3

    .line 52
    add-int/2addr p4, p7

    .line 53
    div-int/2addr p4, p6

    .line 54
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    div-int/2addr p3, p6

    .line 61
    sub-int p8, p4, p3

    .line 62
    .line 63
    :cond_1
    :goto_0
    int-to-float p3, p8

    .line 64
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    const-string p3, "paint"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "text"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string p3, "getBounds(...)"

    .line 20
    .line 21
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-eqz p5, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 31
    .line 32
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 33
    .line 34
    sub-int/2addr p3, p1

    .line 35
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    iget p4, p2, Landroid/graphics/Rect;->top:I

    .line 38
    .line 39
    sub-int/2addr p1, p4

    .line 40
    div-int/lit8 p1, p1, 0x2

    .line 41
    .line 42
    div-int/lit8 p3, p3, 0x4

    .line 43
    .line 44
    sub-int p4, p1, p3

    .line 45
    .line 46
    add-int/2addr p1, p3

    .line 47
    neg-int p1, p1

    .line 48
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 49
    .line 50
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 51
    .line 52
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 53
    .line 54
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 55
    .line 56
    :cond_0
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 57
    .line 58
    return p1
.end method
