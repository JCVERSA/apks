.class public final Lcom/tn/lib/pager/PagerLayoutManager$b;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/lib/pager/PagerLayoutManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/lib/pager/PagerLayoutManager;


# direct methods
.method constructor <init>(Lcom/tn/lib/pager/PagerLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 5

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/tn/lib/pager/PagerLayoutManager;->P(Lcom/tn/lib/pager/PagerLayoutManager;)Landroidx/recyclerview/widget/n;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/n;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$m;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/tn/lib/pager/PagerLayoutManager;->N(Lcom/tn/lib/pager/PagerLayoutManager;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x1

    .line 38
    if-eq v1, p2, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/tn/lib/pager/PagerLayoutManager;->M(Lcom/tn/lib/pager/PagerLayoutManager;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eq v1, v0, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 49
    .line 50
    invoke-static {v1, p2}, Lcom/tn/lib/pager/PagerLayoutManager;->S(Lcom/tn/lib/pager/PagerLayoutManager;I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 54
    .line 55
    invoke-static {v1, v0}, Lcom/tn/lib/pager/PagerLayoutManager;->Q(Lcom/tn/lib/pager/PagerLayoutManager;I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/tn/lib/pager/PagerLayoutManager;->O(Lcom/tn/lib/pager/PagerLayoutManager;)Lng/a;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iget-object v4, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 67
    .line 68
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    sub-int/2addr v4, v3

    .line 73
    if-ne v0, v4, :cond_1

    .line 74
    .line 75
    move v4, v3

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move v4, v2

    .line 78
    :goto_0
    invoke-virtual {v1, v0, v4, p1}, Lng/a;->a(IZLandroid/view/View;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    if-nez p2, :cond_4

    .line 82
    .line 83
    iget-object p2, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 84
    .line 85
    invoke-static {p2, v0}, Lcom/tn/lib/pager/PagerLayoutManager;->R(Lcom/tn/lib/pager/PagerLayoutManager;I)V

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 89
    .line 90
    invoke-static {p2}, Lcom/tn/lib/pager/PagerLayoutManager;->O(Lcom/tn/lib/pager/PagerLayoutManager;)Lng/a;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    if-eqz p2, :cond_4

    .line 95
    .line 96
    iget-object v1, p0, Lcom/tn/lib/pager/PagerLayoutManager$b;->a:Lcom/tn/lib/pager/PagerLayoutManager;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    sub-int/2addr v1, v3

    .line 103
    if-ne v0, v1, :cond_3

    .line 104
    .line 105
    move v2, v3

    .line 106
    :cond_3
    invoke-virtual {p2, v0, v2, p1}, Lng/a;->d(IZLandroid/view/View;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    return-void
.end method
