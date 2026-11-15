.class public final Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;->q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$a;->a:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 4
    .line 5
    .line 6
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
    if-eqz p3, :cond_5

    .line 33
    .line 34
    iget-boolean p4, p0, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment$a;->a:Z

    .line 35
    .line 36
    const/high16 v0, 0x41000000    # 8.0f

    .line 37
    .line 38
    const/high16 v1, 0x41400000    # 12.0f

    .line 39
    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    if-eqz p4, :cond_0

    .line 43
    .line 44
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 62
    .line 63
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    :goto_0
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    add-int/lit8 p3, p3, -0x1

    .line 81
    .line 82
    if-ne p2, p3, :cond_3

    .line 83
    .line 84
    if-eqz p4, :cond_2

    .line 85
    .line 86
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 98
    .line 99
    :goto_1
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    if-eqz p4, :cond_4

    .line 107
    .line 108
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 120
    .line 121
    :goto_2
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 126
    .line 127
    :cond_5
    :goto_3
    return-void
.end method
