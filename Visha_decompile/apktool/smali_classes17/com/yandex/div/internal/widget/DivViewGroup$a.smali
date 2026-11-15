.class public final Lcom/yandex/div/internal/widget/DivViewGroup$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/DivViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div/internal/widget/DivViewGroup$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIIII)I
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, -0x3

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    if-eq p0, v5, :cond_9

    if-eqz p0, :cond_5

    if-eq p0, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    if-ltz p3, :cond_1

    if-gt p3, v4, :cond_1

    :goto_0
    move p2, v3

    goto :goto_5

    :cond_1
    if-ne p3, v2, :cond_2

    move p3, p1

    goto :goto_0

    :cond_2
    if-ne p3, v1, :cond_4

    if-ne p5, v4, :cond_3

    :goto_1
    move p3, p1

    goto :goto_5

    :cond_3
    move p3, p5

    :goto_2
    move p2, v5

    goto :goto_5

    :cond_4
    if-ne p3, v0, :cond_d

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p5}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_2

    :cond_5
    if-ltz p3, :cond_6

    if-gt p3, v4, :cond_6

    goto :goto_0

    :cond_6
    if-ne p3, v2, :cond_7

    goto :goto_1

    :cond_7
    if-ne p3, v1, :cond_8

    goto :goto_3

    :cond_8
    if-ne p3, v0, :cond_d

    :goto_3
    if-ne p5, v4, :cond_3

    goto :goto_1

    :cond_9
    if-ltz p3, :cond_a

    if-gt p3, v4, :cond_a

    goto :goto_0

    :cond_a
    if-ne p3, v2, :cond_b

    move p3, p1

    goto :goto_2

    :cond_b
    if-ne p3, v1, :cond_c

    if-ne p5, v4, :cond_3

    goto :goto_1

    :cond_c
    if-ne p3, v0, :cond_d

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p5}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_2

    :cond_d
    :goto_4
    move p3, p2

    :goto_5
    invoke-static {p3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public final b(FI)F
    .locals 0

    mul-int/lit8 p2, p2, 0x2

    int-to-float p0, p2

    div-float/2addr p1, p0

    return p1
.end method

.method public final c(FI)F
    .locals 0

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p0

    int-to-float p0, p2

    div-float p0, p1, p0

    :goto_0
    return p0
.end method

.method public final d(FI)F
    .locals 0

    add-int/lit8 p2, p2, 0x1

    int-to-float p0, p2

    div-float/2addr p1, p0

    return p1
.end method

.method public final e(I)I
    .locals 0

    const p0, 0x7800007

    and-int/2addr p0, p1

    return p0
.end method

.method public final f(I)I
    .locals 0

    const p0, 0x70000070

    and-int/2addr p0, p1

    return p0
.end method
