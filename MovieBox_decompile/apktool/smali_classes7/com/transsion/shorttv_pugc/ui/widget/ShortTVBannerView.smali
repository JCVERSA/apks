.class public final Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;
.super Lcom/to/aboomy/pager2banner/Banner;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0013\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001d\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B%\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0018\u001a\u00020\u000f2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;",
        "Lcom/to/aboomy/pager2banner/Banner;",
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
        "orientation",
        "",
        "delta",
        "",
        "v",
        "(IF)Z",
        "Landroid/view/MotionEvent;",
        "e",
        "",
        "w",
        "(Landroid/view/MotionEvent;)V",
        "ev",
        "onInterceptTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "u",
        "I",
        "touchSlop",
        "F",
        "initialX",
        "initialY",
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
.field private u:I

.field private v:F

.field private w:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/Banner;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;->u:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/to/aboomy/pager2banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;->u:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/to/aboomy/pager2banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;->u:I

    return-void
.end method

.method private final v(IF)Z
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    float-to-int p2, p2

    .line 6
    neg-int p2, p2

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :goto_0
    return p1
.end method

.method private final w(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;->v:F

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;->w:F

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x2

    .line 42
    if-ne v1, v3, :cond_9

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;->v:F

    .line 49
    .line 50
    sub-float/2addr v1, v3

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;->w:F

    .line 56
    .line 57
    sub-float/2addr p1, v3

    .line 58
    const/4 v3, 0x0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    move v4, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v4, v3

    .line 64
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const/high16 v6, 0x3f800000    # 1.0f

    .line 69
    .line 70
    const/high16 v7, 0x3f000000    # 0.5f

    .line 71
    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    move v8, v7

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v8, v6

    .line 77
    :goto_1
    mul-float/2addr v5, v8

    .line 78
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move v6, v7

    .line 86
    :goto_2
    mul-float/2addr v8, v6

    .line 87
    iget v6, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;->u:I

    .line 88
    .line 89
    int-to-float v7, v6

    .line 90
    cmpl-float v7, v5, v7

    .line 91
    .line 92
    if-gtz v7, :cond_4

    .line 93
    .line 94
    int-to-float v6, v6

    .line 95
    cmpl-float v6, v8, v6

    .line 96
    .line 97
    if-lez v6, :cond_9

    .line 98
    .line 99
    :cond_4
    cmpl-float v5, v8, v5

    .line 100
    .line 101
    if-lez v5, :cond_5

    .line 102
    .line 103
    move v5, v2

    .line 104
    goto :goto_3

    .line 105
    :cond_5
    move v5, v3

    .line 106
    :goto_3
    if-ne v4, v5, :cond_6

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_6
    if-eqz v4, :cond_7

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_7
    move v1, p1

    .line 120
    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;->v(IF)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_8

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 131
    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 139
    .line 140
    .line 141
    :cond_9
    :goto_5
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->getCurrentPager()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;->w(Landroid/view/MotionEvent;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-super {p0, p1}, Lcom/to/aboomy/pager2banner/Banner;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    :goto_0
    return p1
.end method
