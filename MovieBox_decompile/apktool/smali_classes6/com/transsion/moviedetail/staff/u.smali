.class public final Lcom/transsion/moviedetail/staff/u;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private final e:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/moviedetail/staff/u;->a:I

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/transsion/moviedetail/staff/u;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/transsion/moviedetail/staff/u;->d:I

    .line 11
    .line 12
    iput p5, p0, Lcom/transsion/moviedetail/staff/u;->e:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
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
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x1

    .line 42
    if-ne v0, v2, :cond_0

    .line 43
    .line 44
    move v0, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v0, v1

    .line 47
    :goto_0
    instance-of p4, p4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 48
    .line 49
    if-eqz p4, :cond_9

    .line 50
    .line 51
    iget p4, p0, Lcom/transsion/moviedetail/staff/u;->e:I

    .line 52
    .line 53
    if-gtz p4, :cond_1

    .line 54
    .line 55
    move p4, v2

    .line 56
    :cond_1
    rem-int p4, p2, p4

    .line 57
    .line 58
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    const-string v3, "null cannot be cast to non-null type com.transsion.moviedetail.staff.MovieStaffAdapter"

    .line 63
    .line 64
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast p3, Lcom/transsion/moviedetail/staff/s;

    .line 68
    .line 69
    invoke-virtual {p3, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eq p2, v2, :cond_3

    .line 74
    .line 75
    const/4 p3, 0x2

    .line 76
    if-eq p2, p3, :cond_2

    .line 77
    .line 78
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 79
    .line 80
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->a:I

    .line 84
    .line 85
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 86
    .line 87
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    if-eqz v0, :cond_6

    .line 91
    .line 92
    if-nez p4, :cond_4

    .line 93
    .line 94
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->a:I

    .line 95
    .line 96
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 97
    .line 98
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    .line 99
    .line 100
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->e:I

    .line 104
    .line 105
    sub-int/2addr p2, v2

    .line 106
    if-ne p4, p2, :cond_5

    .line 107
    .line 108
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    .line 109
    .line 110
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 111
    .line 112
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->a:I

    .line 113
    .line 114
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    .line 118
    .line 119
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 120
    .line 121
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    if-nez p4, :cond_7

    .line 125
    .line 126
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->a:I

    .line 127
    .line 128
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 129
    .line 130
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    .line 131
    .line 132
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_7
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->e:I

    .line 136
    .line 137
    sub-int/2addr p2, v2

    .line 138
    if-ne p4, p2, :cond_8

    .line 139
    .line 140
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    .line 141
    .line 142
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 143
    .line 144
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->a:I

    .line 145
    .line 146
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_8
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->b:I

    .line 150
    .line 151
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 152
    .line 153
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 154
    .line 155
    :goto_1
    iget p2, p0, Lcom/transsion/moviedetail/staff/u;->d:I

    .line 156
    .line 157
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 158
    .line 159
    :cond_9
    return-void
.end method
