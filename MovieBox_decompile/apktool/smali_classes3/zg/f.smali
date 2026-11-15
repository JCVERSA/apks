.class public Lzg/f;
.super Landroid/text/method/LinkMovementMethod;
.source "source.java"


# direct methods
.method public constructor <init>(Lzg/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const-string v0, "widget"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "buffer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "event"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    float-to-int v2, v2

    .line 31
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    float-to-int v3, v3

    .line 36
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    sub-int/2addr v2, v4

    .line 41
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    sub-int/2addr v3, v4

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    add-int/2addr v2, v4

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    add-int/2addr v3, v4

    .line 56
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    int-to-float v2, v2

    .line 65
    invoke-virtual {v4, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    const-class v3, Landroid/text/style/ClickableSpan;

    .line 70
    .line 71
    invoke-interface {p2, v2, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 76
    .line 77
    array-length v3, v2

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    const/4 p3, 0x0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    if-eq v0, v1, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    aget-object p2, v2, p3

    .line 87
    .line 88
    instance-of v0, p2, Landroid/text/style/URLSpan;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    const-string v0, "null cannot be cast to non-null type android.text.style.URLSpan"

    .line 93
    .line 94
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    check-cast p2, Landroid/text/style/URLSpan;

    .line 98
    .line 99
    aget-object p2, v2, p3

    .line 100
    .line 101
    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    aget-object p1, v2, p3

    .line 106
    .line 107
    invoke-interface {p2, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    aget-object p3, v2, p3

    .line 112
    .line 113
    invoke-interface {p2, p3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    invoke-static {p2, p1, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_0
    return v1

    .line 121
    :cond_4
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    return p1
.end method
