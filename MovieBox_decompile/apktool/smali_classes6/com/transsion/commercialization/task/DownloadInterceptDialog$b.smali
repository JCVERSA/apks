.class public final Lcom/transsion/commercialization/task/DownloadInterceptDialog$b;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/DownloadInterceptDialog;->f1()V
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
    if-eqz p3, :cond_3

    .line 33
    .line 34
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    const/high16 v0, 0x41000000    # 8.0f

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-ne p4, v1, :cond_0

    .line 42
    .line 43
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/high16 p4, 0x41400000    # 12.0f

    .line 51
    .line 52
    if-nez p2, :cond_1

    .line 53
    .line 54
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 59
    .line 60
    invoke-static {p4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    sub-int/2addr p3, v1

    .line 72
    if-ne p2, p3, :cond_2

    .line 73
    .line 74
    const/high16 p2, 0x40800000    # 4.0f

    .line 75
    .line 76
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-static {p4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 88
    .line 89
    :cond_3
    :goto_0
    return-void
.end method
