.class public final Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->w0()Landroidx/recyclerview/widget/RecyclerView$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 2
    .line 3
    .line 4
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
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    const/4 v0, -0x1

    .line 26
    if-ne p4, v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    instance-of v1, v0, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    check-cast v0, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v0, v2

    .line 42
    :goto_0
    if-nez v0, :cond_2

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-ltz p4, :cond_b

    .line 50
    .line 51
    if-lt p4, v1, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :try_start_0
    invoke-virtual {v0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p4

    .line 58
    check-cast p4, Lcom/transsnet/downloader/ugc/adapter/c;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    if-nez p4, :cond_4

    .line 61
    .line 62
    return-void

    .line 63
    :cond_4
    instance-of p4, p4, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 64
    .line 65
    if-eqz p4, :cond_a

    .line 66
    .line 67
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    instance-of p4, p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 72
    .line 73
    if-eqz p4, :cond_5

    .line 74
    .line 75
    check-cast p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    move-object p3, v2

    .line 79
    :goto_1
    if-nez p3, :cond_6

    .line 80
    .line 81
    return-void

    .line 82
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    instance-of p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 87
    .line 88
    if-eqz p3, :cond_7

    .line 89
    .line 90
    move-object v2, p2

    .line 91
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 92
    .line 93
    :cond_7
    if-nez v2, :cond_8

    .line 94
    .line 95
    return-void

    .line 96
    :cond_8
    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    const/16 p3, 0xc

    .line 101
    .line 102
    invoke-static {p3}, Llj/a;->b(I)I

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    const/16 p4, 0x8

    .line 107
    .line 108
    invoke-static {p4}, Llj/a;->b(I)I

    .line 109
    .line 110
    .line 111
    move-result p4

    .line 112
    if-nez p2, :cond_9

    .line 113
    .line 114
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 115
    .line 116
    div-int/lit8 p4, p4, 0x2

    .line 117
    .line 118
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_9
    div-int/lit8 p4, p4, 0x2

    .line 122
    .line 123
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 124
    .line 125
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_a
    const/4 p2, 0x0

    .line 129
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 130
    .line 131
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 132
    .line 133
    :catch_0
    :cond_b
    :goto_2
    return-void
.end method
