.class public Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/view/View;III)V
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->f(IIII)Z

    move-result p2

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->h(IIII)Z

    move-result v0

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->e(IIII)Z

    move-result v1

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->g(IIII)Z

    move-result p0

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-ne p4, p1, :cond_3

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    throw p3

    :cond_1
    throw p3

    :cond_2
    throw p3

    :cond_3
    if-eqz v1, :cond_5

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    throw p3

    :cond_5
    :goto_0
    if-eqz v1, :cond_7

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    throw p3

    :cond_7
    :goto_1
    if-eqz p0, :cond_9

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    throw p3

    :cond_9
    :goto_2
    if-eqz p0, :cond_b

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    throw p3

    :cond_b
    :goto_3
    if-nez v1, :cond_f

    if-nez p0, :cond_e

    if-nez p2, :cond_d

    if-eqz v0, :cond_c

    throw p3

    :cond_c
    throw p3

    :cond_d
    throw p3

    :cond_e
    throw p3

    :cond_f
    throw p3
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/view/View;III)V
    .locals 2

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->f(IIII)Z

    move-result p2

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->h(IIII)Z

    move-result v0

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->e(IIII)Z

    move-result v1

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->g(IIII)Z

    move-result p0

    const/4 p3, 0x0

    if-ne p4, p1, :cond_3

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    if-eqz v0, :cond_1

    throw p3

    :cond_1
    throw p3

    :cond_2
    throw p3

    :cond_3
    if-eqz p2, :cond_5

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    throw p3

    :cond_5
    :goto_0
    if-eqz p2, :cond_7

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    throw p3

    :cond_7
    :goto_1
    if-eqz v0, :cond_9

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    throw p3

    :cond_9
    :goto_2
    if-eqz v0, :cond_b

    if-nez p0, :cond_a

    goto :goto_3

    :cond_a
    throw p3

    :cond_b
    :goto_3
    if-nez p2, :cond_f

    if-nez v0, :cond_e

    if-nez v1, :cond_d

    if-eqz p0, :cond_c

    throw p3

    :cond_c
    throw p3

    :cond_d
    throw p3

    :cond_e
    throw p3

    :cond_f
    throw p3
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 0

    instance-of p0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    return p0

    :cond_0
    instance-of p0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p0, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 0

    instance-of p0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    return p0

    :cond_0
    instance-of p0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p0, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final e(IIII)Z
    .locals 0

    const/4 p0, 0x0

    const/4 p4, 0x1

    if-ne p1, p4, :cond_2

    if-ne p3, p4, :cond_0

    return p4

    :cond_0
    rem-int/2addr p2, p3

    if-nez p2, :cond_1

    move p0, p4

    :cond_1
    return p0

    :cond_2
    if-ge p2, p3, :cond_3

    move p0, p4

    :cond_3
    return p0
.end method

.method public final f(IIII)Z
    .locals 0

    const/4 p0, 0x0

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    if-ge p2, p3, :cond_0

    move p0, p4

    :cond_0
    return p0

    :cond_1
    if-ne p3, p4, :cond_2

    return p4

    :cond_2
    rem-int/2addr p2, p3

    if-nez p2, :cond_3

    move p0, p4

    :cond_3
    return p0
.end method

.method public final g(IIII)Z
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-ne p3, v0, :cond_0

    return v0

    :cond_0
    add-int/2addr p2, v0

    rem-int/2addr p2, p3

    if-nez p2, :cond_1

    move p0, v0

    :cond_1
    return p0

    :cond_2
    if-ne p3, v0, :cond_4

    add-int/2addr p2, v0

    if-ne p2, p4, :cond_3

    move p0, v0

    :cond_3
    return p0

    :cond_4
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    div-int/2addr p4, p3

    if-lez p1, :cond_5

    move p1, v0

    goto :goto_0

    :cond_5
    move p1, p0

    :goto_0
    add-int/2addr p4, p1

    add-int/2addr p2, v0

    rem-int p1, p2, p3

    if-nez p1, :cond_7

    div-int/2addr p2, p3

    if-ne p4, p2, :cond_6

    move p0, v0

    :cond_6
    return p0

    :cond_7
    sub-int/2addr p2, p1

    div-int/2addr p2, p3

    add-int/2addr p2, v0

    if-ne p4, p2, :cond_8

    move p0, v0

    :cond_8
    return p0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    instance-of v0, p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result v0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result p3

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->j(Landroid/graphics/Rect;III)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->i(Landroid/graphics/Rect;III)V

    goto :goto_0

    :cond_1
    instance-of p2, p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p2, p0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final h(IIII)Z
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    if-ne p3, v0, :cond_1

    add-int/2addr p2, v0

    if-ne p2, p4, :cond_0

    move p0, v0

    :cond_0
    return p0

    :cond_1
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    div-int/2addr p4, p3

    if-lez p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, p0

    :goto_0
    add-int/2addr p4, p1

    add-int/2addr p2, v0

    rem-int p1, p2, p3

    if-nez p1, :cond_4

    div-int/2addr p2, p3

    if-ne p4, p2, :cond_3

    move p0, v0

    :cond_3
    return p0

    :cond_4
    sub-int/2addr p2, p1

    div-int/2addr p2, p3

    add-int/2addr p2, v0

    if-ne p4, p2, :cond_5

    move p0, v0

    :cond_5
    return p0

    :cond_6
    if-ne p3, v0, :cond_7

    return v0

    :cond_7
    add-int/2addr p2, v0

    rem-int/2addr p2, p3

    if-nez p2, :cond_8

    move p0, v0

    :cond_8
    return p0
.end method

.method public final i(Landroid/graphics/Rect;III)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->f(IIII)Z

    move-result v1

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->h(IIII)Z

    move-result v2

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->e(IIII)Z

    move-result v3

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->g(IIII)Z

    move-result p2

    const/4 p4, 0x1

    if-ne p3, p4, :cond_3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_0
    if-eqz v3, :cond_1

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    invoke-virtual {p1, v0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_2
    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, v0, v0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    invoke-virtual {p1, v0, p2, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p2, v0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    if-eqz v2, :cond_7

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p2, p0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    invoke-virtual {p1, v0, p2, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_9

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p2, p0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_a

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p2, v0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_a
    if-eqz v2, :cond_b

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p2, p0, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_b
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p2, p0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public final j(Landroid/graphics/Rect;III)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->f(IIII)Z

    move-result v1

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->h(IIII)Z

    move-result v2

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->e(IIII)Z

    move-result v3

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->g(IIII)Z

    move-result p2

    const/4 p4, 0x0

    if-ne p3, v0, :cond_3

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p4, p4, p4, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p4, p0, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_2
    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p4, p0, p4, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p4, p4, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p2, p4, p4, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    invoke-virtual {p1, p4, p2, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    if-eqz p2, :cond_7

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p2, p0, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_8

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p2, p4, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_9

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p2, p0, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_9
    if-eqz v3, :cond_a

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    invoke-virtual {p1, p4, p2, p0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_a
    if-eqz p2, :cond_b

    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p2, p0, p4, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_b
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b:I

    iget p0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c:I

    invoke-virtual {p1, p2, p0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result v7

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v8

    instance-of v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move v9, v2

    :goto_0
    if-ge v9, v8, :cond_1

    invoke-virtual {p3, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->b(Landroid/graphics/Canvas;Landroid/view/View;III)V

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/yanzhenjie/recyclerview/widget/DefaultItemDecoration;->a(Landroid/graphics/Canvas;Landroid/view/View;III)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_2
    instance-of p0, p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-gtz v8, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_3
    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method
