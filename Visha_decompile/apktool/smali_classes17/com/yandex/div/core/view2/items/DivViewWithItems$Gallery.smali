.class public final Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;
.super Lcom/yandex/div/core/view2/items/DivViewWithItems;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/items/DivViewWithItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gallery"
.end annotation


# instance fields
.field public final e:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

.field public final f:Lcom/yandex/div/core/view2/items/Direction;

.field public final g:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/items/Direction;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/div/core/view2/items/DivViewWithItems;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->e:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->f:Lcom/yandex/div/core/view2/items/Direction;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->g:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->e:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    iget-object p0, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->f:Lcom/yandex/div/core/view2/items/Direction;

    invoke-static {v0, p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div/core/view2/items/Direction;)I

    move-result p0

    return p0
.end method

.method public c()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->e:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->b(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method public d()Landroid/util/DisplayMetrics;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->g:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->e:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->c(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method public f()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->e:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->d(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method public g(ILcom/yandex/div2/DivSizeUnit;Z)V
    .locals 2

    const-string v0, "sizeUnit"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->e:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->d()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v1, "metrics"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p0, p3}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->e(Landroidx/recyclerview/widget/RecyclerView;ILcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;Z)V

    return-void
.end method

.method public i(Z)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->e:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->d()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v1, "metrics"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lcom/yandex/div/core/view2/items/DivViewWithItemsKt;->f(Landroidx/recyclerview/widget/RecyclerView;Landroid/util/DisplayMetrics;Z)V

    return-void
.end method

.method public j(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->c()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->e:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery$currentItem$1$smoothScroller$1;

    invoke-direct {v1, v0}, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery$currentItem$1$smoothScroller$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->e:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not in range [0, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public k(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->c()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;->e:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not in range [0, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
