.class public final Ltf/c;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ltf/c;->a:I

    .line 5
    .line 6
    iput p2, p0, Ltf/c;->b:I

    .line 7
    .line 8
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
    if-eqz p3, :cond_0

    .line 33
    .line 34
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p3, 0x0

    .line 40
    :goto_0
    if-nez p3, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    if-nez p2, :cond_2

    .line 44
    .line 45
    iget p2, p0, Ltf/c;->a:I

    .line 46
    .line 47
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    iget p2, p0, Ltf/c;->b:I

    .line 50
    .line 51
    div-int/lit8 p2, p2, 0x2

    .line 52
    .line 53
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 p3, p3, -0x1

    .line 57
    .line 58
    if-ne p2, p3, :cond_3

    .line 59
    .line 60
    iget p2, p0, Ltf/c;->b:I

    .line 61
    .line 62
    div-int/lit8 p2, p2, 0x2

    .line 63
    .line 64
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 65
    .line 66
    iget p2, p0, Ltf/c;->a:I

    .line 67
    .line 68
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget p2, p0, Ltf/c;->b:I

    .line 72
    .line 73
    div-int/lit8 p3, p2, 0x2

    .line 74
    .line 75
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 76
    .line 77
    div-int/lit8 p2, p2, 0x2

    .line 78
    .line 79
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 80
    .line 81
    :goto_1
    return-void
.end method
