.class public final Lcom/transsion/videodetail/adapter/c;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/videodetail/adapter/c;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 1

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
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    const-string v0, "null cannot be cast to non-null type com.transsion.videodetail.adapter.VideoDetailEpisodeAdapter"

    .line 33
    .line 34
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast p4, Lcom/transsion/videodetail/adapter/b;

    .line 38
    .line 39
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    .line 52
    .line 53
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 57
    .line 58
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    rem-int p3, p4, p3

    .line 63
    .line 64
    if-nez p3, :cond_0

    .line 65
    .line 66
    const/4 p3, 0x3

    .line 67
    :cond_0
    sub-int/2addr p4, p3

    .line 68
    const/4 p3, 0x0

    .line 69
    invoke-static {p4, p3}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 70
    .line 71
    .line 72
    move-result p4

    .line 73
    if-lt p2, p4, :cond_1

    .line 74
    .line 75
    iget p2, p0, Lcom/transsion/videodetail/adapter/c;->a:I

    .line 76
    .line 77
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 81
    .line 82
    :goto_0
    return-void
.end method
