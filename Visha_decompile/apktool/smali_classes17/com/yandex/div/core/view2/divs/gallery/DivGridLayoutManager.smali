.class public final Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;
.super Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.source "SourceFile"

# interfaces
.implements Lrj2;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B)\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0014J\u000f\u0010\u0018\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0014J\u000f\u0010\u0019\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0014J7\u0010!\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u0019\u0010%\u001a\u00020 2\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u001f\u0010)\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008)\u0010*J7\u0010+\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008+\u0010\"J\u001b\u0010.\u001a\u00020 2\n\u0010-\u001a\u00060,R\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00100\u001a\u00020 2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00080\u00101J#\u00102\u001a\u00020 2\u0006\u0010\u0006\u001a\u00020\u00052\n\u0010-\u001a\u00060,R\u00020\u0005H\u0016\u00a2\u0006\u0004\u00082\u00103J\u0017\u00104\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u00084\u00105J\u0017\u00107\u001a\u00020 2\u0006\u00106\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00087\u00108J\u0017\u00109\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u00089\u00105J\u0017\u0010:\u001a\u00020 2\u0006\u00106\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008:\u00108J7\u0010;\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008;\u0010\"J\u000f\u0010<\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008<\u0010\u0014J\u000f\u0010=\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008=\u0010\u0014J\u000f\u0010>\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008>\u0010\u0014J\u000f\u0010?\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008?\u0010\u0014J\u0019\u0010@\u001a\u0004\u0018\u00010\u001a2\u0006\u00106\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008@\u0010AJ\u0017\u0010B\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008B\u0010CJ\u000f\u0010D\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008D\u0010\u0014J\u000f\u0010E\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008E\u0010\u0014J\u001f\u0010H\u001a\u00020 2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010G\u001a\u00020FH\u0016\u00a2\u0006\u0004\u0008H\u0010IJ\'\u0010K\u001a\u00020 2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010J\u001a\u00020\t2\u0006\u0010G\u001a\u00020FH\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u0017\u0010N\u001a\u00020\t2\u0006\u0010M\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008N\u0010OR\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010SR\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010WR\u001a\u0010\u0008\u001a\u00020\u00078\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008X\u0010Y\u001a\u0004\u0008Z\u0010[R*\u0010b\u001a\u0012\u0012\u0004\u0012\u00020\u001a0\\j\u0008\u0012\u0004\u0012\u00020\u001a`]8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010aR\u0014\u0010c\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008^\u0010\u0014R\u0014\u0010d\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010\u0014\u00a8\u0006e"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;",
        "Landroidx/recyclerview/widget/StaggeredGridLayoutManager;",
        "Lrj2;",
        "Lcom/yandex/div/core/view2/a;",
        "bindingContext",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "view",
        "Lcom/yandex/div2/DivGallery;",
        "div",
        "",
        "orientation",
        "<init>",
        "(Lcom/yandex/div/core/view2/a;Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div2/DivGallery;I)V",
        "position",
        "Lzl2;",
        "getItemDiv",
        "(I)Lzl2;",
        "j",
        "()Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;",
        "getPaddingStart",
        "()I",
        "getPaddingEnd",
        "getPaddingLeft",
        "getPaddingTop",
        "getPaddingRight",
        "getPaddingBottom",
        "Landroid/view/View;",
        "child",
        "left",
        "top",
        "right",
        "bottom",
        "Lzfb;",
        "layoutDecorated",
        "(Landroid/view/View;IIII)V",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "onLayoutCompleted",
        "(Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "Landroid/graphics/Rect;",
        "outRect",
        "calculateItemDecorationsForChild",
        "(Landroid/view/View;Landroid/graphics/Rect;)V",
        "layoutDecoratedWithMargins",
        "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
        "recycler",
        "removeAndRecycleAllViews",
        "(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V",
        "onAttachedToWindow",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "onDetachedFromWindow",
        "(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V",
        "detachView",
        "(Landroid/view/View;)V",
        "index",
        "detachViewAt",
        "(I)V",
        "removeView",
        "removeViewAt",
        "superLayoutDecoratedWithMargins",
        "firstCompletelyVisibleItemPosition",
        "lastCompletelyVisibleItemPosition",
        "firstVisibleItemPosition",
        "lastVisibleItemPosition",
        "_getChildAt",
        "(I)Landroid/view/View;",
        "_getPosition",
        "(Landroid/view/View;)I",
        "width",
        "getLayoutManagerOrientation",
        "Lcom/yandex/div/core/view2/divs/gallery/ScrollPosition;",
        "scrollPosition",
        "instantScrollToPosition",
        "(ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V",
        "offset",
        "instantScrollToPositionWithOffset",
        "(IILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V",
        "alongOrientation",
        "i",
        "(I)I",
        "e",
        "Lcom/yandex/div/core/view2/a;",
        "getBindingContext",
        "()Lcom/yandex/div/core/view2/a;",
        "f",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "g",
        "Lcom/yandex/div2/DivGallery;",
        "getDiv",
        "()Lcom/yandex/div2/DivGallery;",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "h",
        "Ljava/util/HashSet;",
        "getChildrenToRelayout",
        "()Ljava/util/HashSet;",
        "childrenToRelayout",
        "itemSpacing",
        "crossSpacing",
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
.field public final e:Lcom/yandex/div/core/view2/a;

.field public final f:Landroidx/recyclerview/widget/RecyclerView;

.field public final g:Lcom/yandex/div2/DivGallery;

.field public final h:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/a;Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div2/DivGallery;I)V
    .locals 8

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/yandex/div2/DivGallery;->h:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 v2, 0x1f

    shr-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable convert \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\' to Int"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    const v0, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 v0, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int v0, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->e:Lcom/yandex/div/core/view2/a;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->f:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->g:Lcom/yandex/div2/DivGallery;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->h:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public _getChildAt(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public _getPosition(Landroid/view/View;)I
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outRect"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->_getPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->getItemDiv(I)Lzl2;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p1

    invoke-interface {p1}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v0

    instance-of v0, v0, Lcom/yandex/div2/DivSize$b;

    invoke-interface {p1}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p1

    instance-of p1, p1, Lcom/yandex/div2/DivSize$b;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->i(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {p0, v3}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->i(I)I

    move-result p0

    div-int/lit8 v3, p0, 0x2

    :cond_4
    iget p0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v3

    iget p1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    invoke-virtual {p2, p0, p1, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachView(Landroid/view/View;)V

    invoke-interface {p0, p1}, Lrj2;->_detachView(Landroid/view/View;)V

    return-void
.end method

.method public detachViewAt(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    invoke-interface {p0, p1}, Lrj2;->_detachViewAt(I)V

    return-void
.end method

.method public firstCompletelyVisibleItemPosition()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    invoke-static {v0, v1}, Lwn8;->d(II)I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    invoke-static {v0}, Lhi;->V([I)I

    move-result p0

    return p0
.end method

.method public firstVisibleItemPosition()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    invoke-static {v0, v1}, Lwn8;->d(II)I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    invoke-static {v0}, Lhi;->V([I)I

    move-result p0

    return p0
.end method

.method public final g()I
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->getDiv()Lcom/yandex/div2/DivGallery;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/div2/DivGallery;->k:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v1, "view.resources.displayMetrics"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->h()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getBindingContext()Lcom/yandex/div/core/view2/a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->e:Lcom/yandex/div/core/view2/a;

    return-object p0
.end method

.method public getChildrenToRelayout()Ljava/util/HashSet;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->h:Ljava/util/HashSet;

    return-object p0
.end method

.method public bridge synthetic getChildrenToRelayout()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->getChildrenToRelayout()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public getDiv()Lcom/yandex/div2/DivGallery;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->g:Lcom/yandex/div2/DivGallery;

    return-object p0
.end method

.method public getItemDiv(I)Lzl2;
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.yandex.div.core.view2.divs.gallery.DivGalleryAdapter"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryAdapter;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzl2;

    return-object p0
.end method

.method public getLayoutManagerOrientation()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p0

    return p0
.end method

.method public getPaddingBottom()I
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->i(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public getPaddingEnd()I
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->h()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public getPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->i(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public getPaddingRight()I
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->i(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public getPaddingStart()I
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->h()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public getPaddingTop()I
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->i(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public getView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public final h()I
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->getDiv()Lcom/yandex/div2/DivGallery;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/div2/DivGallery;->t:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v1, "view.resources.displayMetrics"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method public final i(I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->h()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->g()I

    move-result p0

    :goto_0
    return p0
.end method

.method public instantScrollToPosition(ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V
    .locals 7

    const-string v0, "scrollPosition"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lrj2;->a(Lrj2;ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;IILjava/lang/Object;)V

    return-void
.end method

.method public instantScrollToPositionWithOffset(IILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V
    .locals 1

    const-string v0, "scrollPosition"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p3, p2}, Lrj2;->instantScroll(ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;I)V

    return-void
.end method

.method public j()Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;
    .locals 0

    return-object p0
.end method

.method public lastCompletelyVisibleItemPosition()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    invoke-static {v0, v1}, Lwn8;->d(II)I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    invoke-static {v0}, Lhi;->t0([I)I

    move-result p0

    return p0
.end method

.method public lastVisibleItemPosition()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    invoke-static {v0, v1}, Lwn8;->d(II)I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    invoke-static {v0}, Lhi;->t0([I)I

    move-result p0

    return p0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    invoke-interface/range {p0 .. p5}, Lrj2;->_layoutDecorated(Landroid/view/View;IIII)V

    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 10

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v9}, Lrj2;->f(Lrj2;Landroid/view/View;IIIIZILjava/lang/Object;)V

    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-interface {p0, p1}, Lrj2;->_onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recycler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    invoke-interface {p0, p1, p2}, Lrj2;->_onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-interface {p0, p1}, Lrj2;->_onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    const-string v0, "recycler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lrj2;->_removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    invoke-interface {p0, p1}, Lrj2;->_removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    invoke-interface {p0, p1}, Lrj2;->_removeViewAt(I)V

    return-void
.end method

.method public superLayoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic toLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;->j()Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;

    move-result-object p0

    return-object p0
.end method

.method public width()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p0

    return p0
.end method
