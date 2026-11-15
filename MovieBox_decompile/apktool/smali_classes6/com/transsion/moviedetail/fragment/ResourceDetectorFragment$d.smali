.class public final Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$d;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;->m1(Ljava/util/List;Ljava/lang/Integer;)V
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
    move-result-object p3

    .line 32
    const/4 p4, 0x0

    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move p3, p4

    .line 41
    :goto_0
    const/4 v0, 0x4

    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    invoke-static {v0}, Llj/a;->b(I)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    add-int/lit8 p3, p3, -0x1

    .line 54
    .line 55
    if-ne p2, p3, :cond_2

    .line 56
    .line 57
    invoke-static {v0}, Llj/a;->b(I)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 62
    .line 63
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-static {v0}, Llj/a;->b(I)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 71
    .line 72
    invoke-static {v0}, Llj/a;->b(I)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 77
    .line 78
    :goto_1
    return-void
.end method
