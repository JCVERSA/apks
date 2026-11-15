.class public final Ltf/g;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ltf/g;->a:I

    .line 5
    .line 6
    iput-boolean p2, p0, Ltf/g;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 2

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
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams"

    .line 26
    .line 27
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 31
    .line 32
    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()I

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iget-boolean p3, p0, Ltf/g;->b:Z

    .line 56
    .line 57
    if-eqz p3, :cond_3

    .line 58
    .line 59
    if-nez p4, :cond_0

    .line 60
    .line 61
    iget p3, p0, Ltf/g;->a:I

    .line 62
    .line 63
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    div-int/lit8 p3, p3, 0x2

    .line 66
    .line 67
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    add-int/lit8 p3, v0, -0x1

    .line 71
    .line 72
    if-ne p4, p3, :cond_1

    .line 73
    .line 74
    iget p3, p0, Ltf/g;->a:I

    .line 75
    .line 76
    div-int/lit8 p4, p3, 0x2

    .line 77
    .line 78
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 79
    .line 80
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget p3, p0, Ltf/g;->a:I

    .line 84
    .line 85
    div-int/lit8 p4, p3, 0x2

    .line 86
    .line 87
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    div-int/lit8 p3, p3, 0x2

    .line 90
    .line 91
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 92
    .line 93
    :goto_0
    if-ge p2, v0, :cond_2

    .line 94
    .line 95
    iget p2, p0, Ltf/g;->a:I

    .line 96
    .line 97
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 98
    .line 99
    :cond_2
    iget p2, p0, Ltf/g;->a:I

    .line 100
    .line 101
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    rem-int/lit8 p4, p4, 0x2

    .line 105
    .line 106
    const/4 p2, 0x0

    .line 107
    if-nez p4, :cond_4

    .line 108
    .line 109
    move p3, p2

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    iget p3, p0, Ltf/g;->a:I

    .line 112
    .line 113
    div-int/lit8 p3, p3, 0x2

    .line 114
    .line 115
    :goto_1
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 116
    .line 117
    if-nez p4, :cond_5

    .line 118
    .line 119
    iget p2, p0, Ltf/g;->a:I

    .line 120
    .line 121
    div-int/lit8 p2, p2, 0x2

    .line 122
    .line 123
    :cond_5
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 124
    .line 125
    iget p2, p0, Ltf/g;->a:I

    .line 126
    .line 127
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 128
    .line 129
    :goto_2
    return-void
.end method
