.class public final Lcom/tn/lib/view/layoutmanager/OverlapLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001J#\u0010\u0008\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/tn/lib/view/layoutmanager/OverlapLayoutManager;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "Landroidx/recyclerview/widget/RecyclerView$t;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recycler",
        "Landroidx/recyclerview/widget/RecyclerView$x;",
        "state",
        "",
        "onLayoutChildren",
        "(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)V",
        "",
        "a",
        "I",
        "overlapAmount",
        "UI_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:I


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 10

    .line 1
    const-string v0, "recycler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "state"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 v0, 0x0

    .line 21
    move v1, v0

    .line 22
    move v8, v1

    .line 23
    :goto_0
    if-ge v1, p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$t;->o(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v2, "getViewForPosition(...)"

    .line 30
    .line 31
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->addView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->measureChildWithMargins(Landroid/view/View;II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const/4 v5, 0x0

    .line 49
    add-int v6, v8, v9

    .line 50
    .line 51
    move-object v2, p0

    .line 52
    move v4, v8

    .line 53
    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/RecyclerView$m;->layoutDecorated(Landroid/view/View;IIII)V

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lcom/tn/lib/view/layoutmanager/OverlapLayoutManager;->a:I

    .line 57
    .line 58
    sub-int/2addr v9, v2

    .line 59
    add-int/2addr v8, v9

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :goto_2
    return-void
.end method
