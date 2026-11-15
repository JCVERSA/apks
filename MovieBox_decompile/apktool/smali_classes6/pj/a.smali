.class public final Lpj/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/text/Spannable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/text/Spannable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpj/a;->a:Landroid/text/Spannable;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    const-string v0, "textView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    instance-of v1, p1, Landroid/widget/TextView;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    move-object v4, p1

    .line 37
    check-cast v4, Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    int-to-float v5, v5

    .line 44
    sub-float/2addr v3, v5

    .line 45
    invoke-virtual {v4}, Landroid/widget/TextView;->getTotalPaddingTop()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    int-to-float v5, v5

    .line 50
    sub-float/2addr p2, v5

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    int-to-float v5, v5

    .line 56
    add-float/2addr v3, v5

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    int-to-float v5, v5

    .line 62
    add-float/2addr p2, v5

    .line 63
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string v5, "getLayout(...)"

    .line 68
    .line 69
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    float-to-int p2, p2

    .line 73
    invoke-virtual {v4, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-virtual {v4, p2, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    iget-object v3, p0, Lpj/a;->a:Landroid/text/Spannable;

    .line 82
    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    const-class v4, Landroid/text/style/ClickableSpan;

    .line 86
    .line 87
    invoke-interface {v3, p2, p2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, [Landroid/text/style/ClickableSpan;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const/4 p2, 0x0

    .line 95
    :goto_0
    array-length v3, p2

    .line 96
    if-nez v3, :cond_3

    .line 97
    .line 98
    move v3, v1

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    move v3, v2

    .line 101
    :goto_1
    if-nez v3, :cond_7

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    if-eq v0, v1, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    aget-object p2, p2, v2

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    iget-object p1, p0, Lpj/a;->a:Landroid/text/Spannable;

    .line 115
    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    aget-object v0, p2, v2

    .line 119
    .line 120
    invoke-interface {p1, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    iget-object v0, p0, Lpj/a;->a:Landroid/text/Spannable;

    .line 125
    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    aget-object p2, p2, v2

    .line 129
    .line 130
    invoke-interface {v0, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    :try_start_0
    iget-object v0, p0, Lpj/a;->a:Landroid/text/Spannable;

    .line 135
    .line 136
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    :catchall_0
    :cond_6
    :goto_2
    return v1

    .line 140
    :cond_7
    iget-object p1, p0, Lpj/a;->a:Landroid/text/Spannable;

    .line 141
    .line 142
    invoke-static {p1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 143
    .line 144
    .line 145
    :goto_3
    return v2
.end method
