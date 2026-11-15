.class public final Lcom/transsion/shorttv/base/widget/m;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/base/widget/m;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 4
    iput p1, p0, Lcom/transsion/shorttv/base/widget/m;->a:F

    .line 5
    iput p2, p0, Lcom/transsion/shorttv/base/widget/m;->b:F

    .line 6
    iput p3, p0, Lcom/transsion/shorttv/base/widget/m;->c:F

    return-void
.end method

.method public synthetic constructor <init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 2
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/shorttv/base/widget/m;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 3

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "state"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$l;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 p3, 0x0

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    iget v0, p0, Lcom/transsion/shorttv/base/widget/m;->a:F

    .line 32
    .line 33
    cmpl-float v1, v0, p3

    .line 34
    .line 35
    if-lez v1, :cond_0

    .line 36
    .line 37
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    :cond_0
    iget v0, p0, Lcom/transsion/shorttv/base/widget/m;->b:F

    .line 44
    .line 45
    cmpl-float v1, v0, p3

    .line 46
    .line 47
    if-lez v1, :cond_1

    .line 48
    .line 49
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 54
    .line 55
    :cond_1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    const/4 v0, 0x1

    .line 60
    sub-int/2addr p4, v0

    .line 61
    iget v1, p0, Lcom/transsion/shorttv/base/widget/m;->c:F

    .line 62
    .line 63
    cmpl-float v2, v1, p3

    .line 64
    .line 65
    if-lez v2, :cond_3

    .line 66
    .line 67
    iget v2, p0, Lcom/transsion/shorttv/base/widget/m;->a:F

    .line 68
    .line 69
    cmpl-float v2, v2, p3

    .line 70
    .line 71
    if-lez v2, :cond_3

    .line 72
    .line 73
    if-nez p2, :cond_2

    .line 74
    .line 75
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 80
    .line 81
    :cond_2
    if-ne p2, p4, :cond_3

    .line 82
    .line 83
    iget v1, p0, Lcom/transsion/shorttv/base/widget/m;->c:F

    .line 84
    .line 85
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    :cond_3
    iget v1, p0, Lcom/transsion/shorttv/base/widget/m;->c:F

    .line 92
    .line 93
    cmpl-float v2, v1, p3

    .line 94
    .line 95
    if-lez v2, :cond_5

    .line 96
    .line 97
    iget v2, p0, Lcom/transsion/shorttv/base/widget/m;->b:F

    .line 98
    .line 99
    cmpl-float p3, v2, p3

    .line 100
    .line 101
    if-lez p3, :cond_5

    .line 102
    .line 103
    if-nez p2, :cond_4

    .line 104
    .line 105
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 110
    .line 111
    :cond_4
    if-ne p2, p4, :cond_5

    .line 112
    .line 113
    iget p2, p0, Lcom/transsion/shorttv/base/widget/m;->c:F

    .line 114
    .line 115
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 120
    .line 121
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-static {p2}, Landroidx/core/text/u;->a(Ljava/util/Locale;)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-ne p2, v0, :cond_6

    .line 130
    .line 131
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 132
    .line 133
    iget p3, p1, Landroid/graphics/Rect;->right:I

    .line 134
    .line 135
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 136
    .line 137
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 138
    .line 139
    :cond_6
    return-void
.end method
