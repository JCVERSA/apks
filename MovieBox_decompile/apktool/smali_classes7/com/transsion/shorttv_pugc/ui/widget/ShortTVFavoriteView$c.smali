.class public final Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView$c;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;

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
    if-eqz p3, :cond_4

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;

    .line 37
    .line 38
    invoke-static {p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;->access$isRTL$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;

    .line 45
    .line 46
    invoke-static {p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;->access$getDp8$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    mul-int/lit8 p2, p2, 0x2

    .line 51
    .line 52
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;

    .line 56
    .line 57
    invoke-static {p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;->access$getDp8$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    mul-int/lit8 p2, p2, 0x2

    .line 62
    .line 63
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    add-int/lit8 p3, p3, -0x1

    .line 71
    .line 72
    if-ne p2, p3, :cond_2

    .line 73
    .line 74
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;

    .line 75
    .line 76
    invoke-static {p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;->access$getDp8$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 81
    .line 82
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;

    .line 83
    .line 84
    invoke-static {p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;->access$getDp8$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;

    .line 92
    .line 93
    invoke-static {p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;->access$isRTL$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;

    .line 100
    .line 101
    invoke-static {p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;->access$getDp8$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;)I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView$c;->a:Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;

    .line 109
    .line 110
    invoke-static {p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;->access$getDp8$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;)I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 115
    .line 116
    :cond_4
    :goto_0
    return-void
.end method
