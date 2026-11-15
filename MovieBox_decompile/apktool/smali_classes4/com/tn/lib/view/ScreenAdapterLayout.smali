.class public Lcom/tn/lib/view/ScreenAdapterLayout;
.super Landroid/widget/LinearLayout;
.source "source.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->a:Z

    .line 3
    iput-boolean p1, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->a:Z

    .line 6
    iput-boolean p1, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->b:Z

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->b:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->b:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :goto_0
    if-ge v2, v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    .line 30
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 31
    .line 32
    if-lez v4, :cond_0

    .line 33
    .line 34
    int-to-float v4, v4

    .line 35
    iget v5, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->c:F

    .line 36
    .line 37
    mul-float/2addr v4, v5

    .line 38
    float-to-int v4, v4

    .line 39
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 40
    .line 41
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 42
    .line 43
    int-to-float v4, v4

    .line 44
    iget v5, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->d:F

    .line 45
    .line 46
    mul-float/2addr v4, v5

    .line 47
    float-to-int v4, v4

    .line 48
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 49
    .line 50
    :cond_0
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 51
    .line 52
    int-to-float v4, v4

    .line 53
    iget v5, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->d:F

    .line 54
    .line 55
    mul-float/2addr v4, v5

    .line 56
    float-to-int v4, v4

    .line 57
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 58
    .line 59
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 60
    .line 61
    int-to-float v4, v4

    .line 62
    mul-float/2addr v4, v5

    .line 63
    float-to-int v4, v4

    .line 64
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 65
    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iput-boolean v1, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->a:Z

    .line 70
    .line 71
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public setScale(FF)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->a:Z

    .line 3
    .line 4
    iput p1, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->c:F

    .line 5
    .line 6
    iput p2, p0, Lcom/tn/lib/view/ScreenAdapterLayout;->d:F

    .line 7
    .line 8
    return-void
.end method
