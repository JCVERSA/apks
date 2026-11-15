.class public final Ltf/h;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ltf/h;->a:I

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    if-le p2, p1, :cond_0

    .line 8
    .line 9
    add-int/lit8 p1, p2, -0x1

    .line 10
    .line 11
    mul-int/lit8 p1, p1, 0x8

    .line 12
    .line 13
    int-to-float p1, p1

    .line 14
    const/high16 v0, 0x41c00000    # 24.0f

    .line 15
    .line 16
    add-float/2addr p1, v0

    .line 17
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    div-int/2addr p1, p2

    .line 22
    const/high16 p2, 0x41400000    # 12.0f

    .line 23
    .line 24
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    int-to-float p2, p2

    .line 29
    iput p2, p0, Ltf/h;->d:F

    .line 30
    .line 31
    int-to-float p1, p1

    .line 32
    sub-float p2, p1, p2

    .line 33
    .line 34
    iput p2, p0, Ltf/h;->c:F

    .line 35
    .line 36
    const/high16 p2, 0x40000000    # 2.0f

    .line 37
    .line 38
    div-float/2addr p1, p2

    .line 39
    iput p1, p0, Ltf/h;->e:F

    .line 40
    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 0

    .line 1
    iput p1, p0, Ltf/h;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 4

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
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sub-int/2addr v0, v2

    .line 38
    if-ne p4, v0, :cond_0

    .line 39
    .line 40
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget v0, p0, Ltf/h;->b:I

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v3, "TrendingTitle"

    .line 52
    .line 53
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v3, "UGCFeedsBig"

    .line 64
    .line 65
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    :cond_1
    iget p2, p0, Ltf/h;->b:I

    .line 72
    .line 73
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const-string v0, "TrendingMargin"

    .line 81
    .line 82
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iget p2, p0, Ltf/h;->a:I

    .line 92
    .line 93
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 94
    .line 95
    :goto_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    instance-of p3, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 100
    .line 101
    if-eqz p3, :cond_8

    .line 102
    .line 103
    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 104
    .line 105
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->Y()Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0, p4}, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->Y()Landroidx/recyclerview/widget/GridLayoutManager$c;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p2, p4, p3}, Landroidx/recyclerview/widget/GridLayoutManager$c;->e(II)I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-ne v0, p3, :cond_4

    .line 126
    .line 127
    return-void

    .line 128
    :cond_4
    iget p4, p0, Ltf/h;->d:F

    .line 129
    .line 130
    const/4 v1, 0x0

    .line 131
    cmpl-float v1, p4, v1

    .line 132
    .line 133
    if-lez v1, :cond_7

    .line 134
    .line 135
    if-nez p2, :cond_5

    .line 136
    .line 137
    float-to-int p2, p4

    .line 138
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 139
    .line 140
    iget p2, p0, Ltf/h;->c:F

    .line 141
    .line 142
    float-to-int p2, p2

    .line 143
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    sub-int/2addr p3, v0

    .line 147
    if-ne p2, p3, :cond_6

    .line 148
    .line 149
    iget p2, p0, Ltf/h;->c:F

    .line 150
    .line 151
    float-to-int p2, p2

    .line 152
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 153
    .line 154
    float-to-int p2, p4

    .line 155
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    iget p2, p0, Ltf/h;->e:F

    .line 159
    .line 160
    float-to-int p3, p2

    .line 161
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 162
    .line 163
    float-to-int p2, p2

    .line 164
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 165
    .line 166
    :goto_1
    iget p2, p0, Ltf/h;->b:I

    .line 167
    .line 168
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 169
    .line 170
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-ne p2, v2, :cond_8

    .line 179
    .line 180
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 181
    .line 182
    iget p3, p1, Landroid/graphics/Rect;->right:I

    .line 183
    .line 184
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 185
    .line 186
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 187
    .line 188
    :cond_8
    return-void
.end method
