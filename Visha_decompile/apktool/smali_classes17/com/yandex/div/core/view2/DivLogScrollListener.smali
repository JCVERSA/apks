.class public final Lcom/yandex/div/core/view2/DivLogScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/DivLogScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "",
        "dx",
        "dy",
        "Lzfb;",
        "onScrolled",
        "(Landroidx/recyclerview/widget/RecyclerView;II)V",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "c",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "layoutManager",
        "",
        "d",
        "Z",
        "isVertical",
        "e",
        "I",
        "scrollGap",
        "f",
        "totalScroll",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final c:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final d:Z

.field public final e:I

.field public f:I


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget p1, p0, Lcom/yandex/div/core/view2/DivLogScrollListener;->f:I

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/DivLogScrollListener;->d:Z

    if-eqz v0, :cond_0

    move p2, p3

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/yandex/div/core/view2/DivLogScrollListener;->f:I

    iget-boolean p1, p0, Lcom/yandex/div/core/view2/DivLogScrollListener;->d:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yandex/div/core/view2/DivLogScrollListener;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/yandex/div/core/view2/DivLogScrollListener;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p1

    :goto_0
    iget p2, p0, Lcom/yandex/div/core/view2/DivLogScrollListener;->e:I

    div-int/2addr p1, p2

    iget p2, p0, Lcom/yandex/div/core/view2/DivLogScrollListener;->f:I

    if-le p2, p1, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lcom/yandex/div/core/view2/DivLogScrollListener;->f:I

    iget-object p1, p0, Lcom/yandex/div/core/view2/DivLogScrollListener;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivLogScrollListener;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    if-lt p1, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method
