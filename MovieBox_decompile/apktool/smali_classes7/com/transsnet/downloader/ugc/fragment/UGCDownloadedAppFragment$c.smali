.class public final Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$c;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->l0()Landroidx/recyclerview/widget/RecyclerView$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

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
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->i0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;)Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_8

    .line 36
    .line 37
    invoke-virtual {v0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    check-cast p4, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 42
    .line 43
    if-nez p4, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    instance-of p4, p4, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 47
    .line 48
    if-eqz p4, :cond_8

    .line 49
    .line 50
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    instance-of p4, p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p4, :cond_2

    .line 58
    .line 59
    check-cast p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-object p3, v0

    .line 63
    :goto_0
    if-nez p3, :cond_3

    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    instance-of p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 71
    .line 72
    if-eqz p3, :cond_4

    .line 73
    .line 74
    move-object v0, p2

    .line 75
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 76
    .line 77
    :cond_4
    if-nez v0, :cond_5

    .line 78
    .line 79
    return-void

    .line 80
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    const/16 p3, 0xc

    .line 85
    .line 86
    invoke-static {p3}, Llj/a;->b(I)I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    const/16 p4, 0x8

    .line 91
    .line 92
    invoke-static {p4}, Llj/a;->b(I)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz p2, :cond_7

    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    if-eq p2, v1, :cond_6

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    div-int/lit8 v0, v0, 0x2

    .line 103
    .line 104
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 105
    .line 106
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_7
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 110
    .line 111
    div-int/lit8 v0, v0, 0x2

    .line 112
    .line 113
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 114
    .line 115
    :goto_1
    invoke-static {p4}, Llj/a;->b(I)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 120
    .line 121
    :cond_8
    :goto_2
    return-void
.end method
