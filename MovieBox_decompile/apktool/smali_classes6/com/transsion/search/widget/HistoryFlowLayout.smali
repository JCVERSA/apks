.class public final Lcom/transsion/search/widget/HistoryFlowLayout;
.super Landroid/view/ViewGroup;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J7\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\n\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/search/widget/HistoryFlowLayout;",
        "Landroid/view/ViewGroup;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "maxLines",
        "",
        "setMaxLines",
        "(I)V",
        "toggleExpanded",
        "()V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onLayout",
        "(ZIIII)V",
        "a",
        "I",
        "Z",
        "isExpanded",
        "Search_psRelease"
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
.field private a:I

.field private b:Z


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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/search/widget/HistoryFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/search/widget/HistoryFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    .line 5
    iput p1, p0, Lcom/transsion/search/widget/HistoryFlowLayout;->a:I

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/search/widget/HistoryFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/search/widget/HistoryFlowLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/widget/HistoryFlowLayout;->d(Lcom/transsion/search/widget/HistoryFlowLayout;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/search/widget/HistoryFlowLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search/widget/HistoryFlowLayout;->c(Lcom/transsion/search/widget/HistoryFlowLayout;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/transsion/search/widget/HistoryFlowLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/search/widget/HistoryFlowLayout;->toggleExpanded()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Lcom/transsion/search/widget/HistoryFlowLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/search/widget/HistoryFlowLayout;->toggleExpanded()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9

    .line 1
    sub-int/2addr p4, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/4 p2, 0x0

    .line 7
    move p3, p2

    .line 8
    move p5, p3

    .line 9
    move v0, p5

    .line 10
    move v1, v0

    .line 11
    move v2, v1

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge p3, p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    add-int v7, p5, v5

    .line 28
    .line 29
    if-le v7, p4, :cond_1

    .line 30
    .line 31
    add-int/2addr v0, v1

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    iget-boolean p5, p0, Lcom/transsion/search/widget/HistoryFlowLayout;->b:Z

    .line 35
    .line 36
    if-nez p5, :cond_0

    .line 37
    .line 38
    iget p5, p0, Lcom/transsion/search/widget/HistoryFlowLayout;->a:I

    .line 39
    .line 40
    if-lt v2, p5, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    move p5, p2

    .line 44
    move v1, p5

    .line 45
    move v3, v1

    .line 46
    :cond_1
    add-int v7, v3, v5

    .line 47
    .line 48
    add-int v8, v0, v6

    .line 49
    .line 50
    invoke-virtual {v4, v3, v0, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 51
    .line 52
    .line 53
    add-int/2addr p5, v5

    .line 54
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/lit8 p3, p3, 0x1

    .line 59
    .line 60
    move v3, v7

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move p2, v3

    .line 63
    :goto_1
    iget-boolean p1, p0, Lcom/transsion/search/widget/HistoryFlowLayout;->b:Z

    .line 64
    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    iget p3, p0, Lcom/transsion/search/widget/HistoryFlowLayout;->a:I

    .line 68
    .line 69
    if-lt v2, p3, :cond_3

    .line 70
    .line 71
    new-instance p1, Landroid/widget/Button;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-direct {p1, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    const-string p3, "\u5c55\u5f00"

    .line 81
    .line 82
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    new-instance p3, Lcom/transsion/search/widget/b;

    .line 86
    .line 87
    invoke-direct {p3, p0}, Lcom/transsion/search/widget/b;-><init>(Lcom/transsion/search/widget/HistoryFlowLayout;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 101
    .line 102
    .line 103
    move-result p4

    .line 104
    add-int/2addr p3, p2

    .line 105
    add-int/2addr p4, v0

    .line 106
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    if-eqz p1, :cond_4

    .line 111
    .line 112
    new-instance p1, Landroid/widget/Button;

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-direct {p1, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    const-string p3, "\u6536\u8d77"

    .line 122
    .line 123
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    new-instance p3, Lcom/transsion/search/widget/c;

    .line 127
    .line 128
    invoke-direct {p3, p0}, Lcom/transsion/search/widget/c;-><init>(Lcom/transsion/search/widget/HistoryFlowLayout;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 138
    .line 139
    .line 140
    move-result p3

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 142
    .line 143
    .line 144
    move-result p4

    .line 145
    add-int/2addr p3, p2

    .line 146
    add-int/2addr p4, v0

    .line 147
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 148
    .line 149
    .line 150
    :cond_4
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    move v4, v3

    .line 12
    move v5, v4

    .line 13
    move v6, v5

    .line 14
    move v7, v6

    .line 15
    :goto_0
    if-ge v3, v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-virtual {p0, v8, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    add-int v10, v4, v9

    .line 33
    .line 34
    if-le v10, v0, :cond_1

    .line 35
    .line 36
    add-int/2addr v5, v6

    .line 37
    add-int/lit8 v7, v7, 0x1

    .line 38
    .line 39
    iget-boolean v4, p0, Lcom/transsion/search/widget/HistoryFlowLayout;->b:Z

    .line 40
    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    iget v4, p0, Lcom/transsion/search/widget/HistoryFlowLayout;->a:I

    .line 44
    .line 45
    if-lt v7, v4, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    move v4, v2

    .line 49
    move v6, v4

    .line 50
    :cond_1
    add-int/2addr v4, v9

    .line 51
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move v2, v6

    .line 59
    :goto_1
    add-int/2addr v5, v2

    .line 60
    invoke-virtual {p0, v0, v5}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final setMaxLines(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/search/widget/HistoryFlowLayout;->a:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toggleExpanded()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/search/widget/HistoryFlowLayout;->b:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/transsion/search/widget/HistoryFlowLayout;->b:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
