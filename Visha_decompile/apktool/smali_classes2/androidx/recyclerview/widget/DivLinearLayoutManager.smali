.class public final Landroidx/recyclerview/widget/DivLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"

# interfaces
.implements Lrj2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001fB)\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\'\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\'\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J7\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0019\u0010#\u001a\u00020\u00172\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008#\u0010$J7\u0010%\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008%\u0010 J\u001b\u0010(\u001a\u00020\u00172\n\u0010\'\u001a\u00060&R\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010*\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008*\u0010+J#\u0010,\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u00052\n\u0010\'\u001a\u00060&R\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010.\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00101\u001a\u00020\u00172\u0006\u00100\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00081\u00102J\u0017\u00103\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u00083\u0010/J\u0017\u00104\u001a\u00020\u00172\u0006\u00100\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00084\u00102J7\u00105\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00085\u0010 J\u000f\u00106\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00088\u00107J\u000f\u00109\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00089\u00107J\u000f\u0010:\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008:\u00107J\u0019\u0010;\u001a\u0004\u0018\u00010\u00132\u0006\u00100\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010=\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010?\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008?\u00107J\u000f\u0010@\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008@\u00107J\u001f\u0010C\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\t2\u0006\u0010B\u001a\u00020AH\u0016\u00a2\u0006\u0004\u0008C\u0010DJ\'\u0010F\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\t2\u0006\u0010E\u001a\u00020\t2\u0006\u0010B\u001a\u00020AH\u0016\u00a2\u0006\u0004\u0008F\u0010GJ\u0019\u0010K\u001a\u00020J2\u0008\u0010I\u001a\u0004\u0018\u00010HH\u0016\u00a2\u0006\u0004\u0008K\u0010LJ#\u0010Q\u001a\u00020H2\u0008\u0010N\u001a\u0004\u0018\u00010M2\u0008\u0010P\u001a\u0004\u0018\u00010OH\u0016\u00a2\u0006\u0004\u0008Q\u0010RJ\u0019\u0010Q\u001a\u00020H2\u0008\u0010I\u001a\u0004\u0018\u00010SH\u0016\u00a2\u0006\u0004\u0008Q\u0010TJ\u000f\u0010U\u001a\u00020HH\u0016\u00a2\u0006\u0004\u0008U\u0010VR\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010W\u001a\u0004\u0008X\u0010YR\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010Z\u001a\u0004\u0008[\u0010\\R\u001a\u0010\u0008\u001a\u00020\u00078\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010]\u001a\u0004\u0008^\u0010_R*\u0010b\u001a\u0012\u0012\u0004\u0012\u00020\u00130`j\u0008\u0012\u0004\u0012\u00020\u0013`a8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010e\u00a8\u0006g"
    }
    d2 = {
        "Landroidx/recyclerview/widget/DivLinearLayoutManager;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
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
        "toLayoutManager",
        "()Landroidx/recyclerview/widget/DivLinearLayoutManager;",
        "Landroid/view/View;",
        "child",
        "widthUsed",
        "heightUsed",
        "Lzfb;",
        "measureChild",
        "(Landroid/view/View;II)V",
        "measureChildWithMargins",
        "left",
        "top",
        "right",
        "bottom",
        "layoutDecorated",
        "(Landroid/view/View;IIII)V",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "onLayoutCompleted",
        "(Landroidx/recyclerview/widget/RecyclerView$State;)V",
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
        "()I",
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
        "Landroidx/recyclerview/widget/RecyclerView$LayoutParams;",
        "lp",
        "",
        "checkLayoutParams",
        "(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z",
        "Landroid/content/Context;",
        "c",
        "Landroid/util/AttributeSet;",
        "attrs",
        "generateLayoutParams",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;",
        "Landroid/view/ViewGroup$LayoutParams;",
        "(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;",
        "generateDefaultLayoutParams",
        "()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;",
        "Lcom/yandex/div/core/view2/a;",
        "getBindingContext",
        "()Lcom/yandex/div/core/view2/a;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "Lcom/yandex/div2/DivGallery;",
        "getDiv",
        "()Lcom/yandex/div2/DivGallery;",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "childrenToRelayout",
        "Ljava/util/HashSet;",
        "getChildrenToRelayout",
        "()Ljava/util/HashSet;",
        "DivRecyclerViewLayoutParams",
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
.field private final bindingContext:Lcom/yandex/div/core/view2/a;

.field private final childrenToRelayout:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final div:Lcom/yandex/div2/DivGallery;

.field private final view:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/a;Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div2/DivGallery;I)V
    .locals 2

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/DivLinearLayoutManager;->bindingContext:Lcom/yandex/div/core/view2/a;

    .line 4
    iput-object p2, p0, Landroidx/recyclerview/widget/DivLinearLayoutManager;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iput-object p3, p0, Landroidx/recyclerview/widget/DivLinearLayoutManager;->div:Lcom/yandex/div2/DivGallery;

    .line 6
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/DivLinearLayoutManager;->childrenToRelayout:Ljava/util/HashSet;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/a;Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div2/DivGallery;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/DivLinearLayoutManager;-><init>(Lcom/yandex/div/core/view2/a;Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div2/DivGallery;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic _detachView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lrj2;->_detachView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic _detachViewAt(I)V
    .locals 0

    invoke-super {p0, p1}, Lrj2;->_detachViewAt(I)V

    return-void
.end method

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

.method public bridge synthetic _layoutDecorated(Landroid/view/View;IIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lrj2;->_layoutDecorated(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic _layoutDecoratedWithMargins(Landroid/view/View;IIIIZ)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lrj2;->_layoutDecoratedWithMargins(Landroid/view/View;IIIIZ)V

    return-void
.end method

.method public bridge synthetic _onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Lrj2;->_onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic _onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lrj2;->_onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public bridge synthetic _onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1}, Lrj2;->_onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public bridge synthetic _removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    invoke-super {p0, p1}, Lrj2;->_removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public bridge synthetic _removeView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lrj2;->_removeView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic _removeViewAt(I)V
    .locals 0

    invoke-super {p0, p1}, Lrj2;->_removeViewAt(I)V

    return-void
.end method

.method public bridge synthetic calcScrollOffset(Landroid/view/View;)I
    .locals 0

    invoke-super {p0, p1}, Lrj2;->calcScrollOffset(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;

    return p0
.end method

.method public detachView(Landroid/view/View;)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->_detachView(Landroid/view/View;)V

    return-void
.end method

.method public detachViewAt(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->_detachViewAt(I)V

    return-void
.end method

.method public firstCompletelyVisibleItemPosition()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public firstVisibleItemPosition()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance p0, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 2
    instance-of p0, p1, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;

    check-cast p1, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;-><init>(Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of p0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of p0, p1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    if-eqz p0, :cond_2

    new-instance p0, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;

    check-cast p1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;-><init>(Lcom/yandex/div/internal/widget/DivLayoutParams;)V

    goto :goto_0

    .line 5
    :cond_2
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_3

    new-instance p0, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance p0, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public getBindingContext()Lcom/yandex/div/core/view2/a;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/DivLinearLayoutManager;->bindingContext:Lcom/yandex/div/core/view2/a;

    return-object p0
.end method

.method public bridge synthetic getChildMeasureSpec(IIIIIZ)I
    .locals 0

    invoke-super/range {p0 .. p6}, Lrj2;->getChildMeasureSpec(IIIIIZ)I

    move-result p0

    return p0
.end method

.method public getChildrenToRelayout()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/DivLinearLayoutManager;->childrenToRelayout:Ljava/util/HashSet;

    return-object p0
.end method

.method public bridge synthetic getChildrenToRelayout()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->getChildrenToRelayout()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public getDiv()Lcom/yandex/div2/DivGallery;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/DivLinearLayoutManager;->div:Lcom/yandex/div2/DivGallery;

    return-object p0
.end method

.method public getItemDiv(I)Lzl2;
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->getView()Landroidx/recyclerview/widget/RecyclerView;

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

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    return p0
.end method

.method public getView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/DivLinearLayoutManager;->view:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public bridge synthetic instantScroll(ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lrj2;->instantScroll(ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;I)V

    return-void
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

    invoke-virtual {p0, p1, p3, p2}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->instantScroll(ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;I)V

    return-void
.end method

.method public lastCompletelyVisibleItemPosition()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public lastVisibleItemPosition()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    invoke-virtual/range {p0 .. p5}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->_layoutDecorated(Landroid/view/View;IIII)V

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

.method public measureChild(Landroid/view/View;II)V
    .locals 9

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.DivLinearLayoutManager.DivRecyclerViewLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, p2

    iget p2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget p2, v1, Landroid/graphics/Rect;->right:I

    add-int v5, v2, p2

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;->getMaxWidth()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v8

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->getChildMeasureSpec(IIIIIZ)I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, p3

    iget p3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget p3, v1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v2, p3

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;->getMaxHeight()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v8

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->getChildMeasureSpec(IIIIIZ)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 9

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.DivLinearLayoutManager.DivRecyclerViewLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v2, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    add-int/2addr v2, p2

    iget p2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget p2, v1, Landroid/graphics/Rect;->right:I

    add-int v5, v2, p2

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;->getMaxWidth()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v8

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->getChildMeasureSpec(IIIIIZ)I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v2, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v5

    add-int/2addr v2, p3

    iget p3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget p3, v1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v2, p3

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DivLinearLayoutManager$DivRecyclerViewLayoutParams;->getMaxHeight()I

    move-result v7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v8

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->getChildMeasureSpec(IIIIIZ)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->_onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recycler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->_onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->_onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    const-string v0, "recycler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->_removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->_removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->_removeViewAt(I)V

    return-void
.end method

.method public superLayoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public toLayoutManager()Landroidx/recyclerview/widget/DivLinearLayoutManager;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic toLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DivLinearLayoutManager;->toLayoutManager()Landroidx/recyclerview/widget/DivLinearLayoutManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic trackVisibilityAction(Landroid/view/View;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lrj2;->trackVisibilityAction(Landroid/view/View;Z)V

    return-void
.end method

.method public width()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p0

    return p0
.end method
