.class public Lzr8;
.super Lvv2;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/core/view2/Div2View;

.field public final b:Lcom/yandex/div/core/a;

.field public final c:Lvi2;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/a;Lvi2;)V
    .locals 1

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divCustomContainerViewAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divExtensionController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lvv2;-><init>()V

    iput-object p1, p0, Lzr8;->a:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lzr8;->b:Lcom/yandex/div/core/a;

    iput-object p3, p0, Lzr8;->c:Lvi2;

    return-void
.end method


# virtual methods
.method public a(Lmk2;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-interface {p1}, Lmk2;->getDiv()Lcom/yandex/div2/Div;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-interface {p1}, Lmk2;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    :cond_1
    invoke-virtual {p0, v0, v1, v2}, Lzr8;->v(Landroid/view/View;Log2;Loj3;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lzr8;->u(Landroid/view/View;)V

    return-void
.end method

.method public c(Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;->getDiv()Lcom/yandex/div2/Div$c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lzr8;->u(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lzr8;->c:Lvi2;

    iget-object v3, p0, Lzr8;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$c;->c()Lcom/yandex/div2/DivCustom;

    move-result-object v4

    invoke-virtual {v2, v3, v1, p1, v4}, Lvi2;->e(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V

    iget-object p0, p0, Lzr8;->b:Lcom/yandex/div/core/a;

    invoke-virtual {v0}, Lcom/yandex/div2/Div$c;->c()Lcom/yandex/div2/DivCustom;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/yandex/div/core/a;->release(Landroid/view/View;Lcom/yandex/div2/DivCustom;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public k(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lvv2;->k(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public l(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lvv2;->l(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public u(Landroid/view/View;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ltr8;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Ltr8;

    invoke-interface {p0}, Ltr8;->release()V

    :cond_0
    invoke-static {p1}, Lvr8;->b(Landroid/view/View;)Ljava/lang/Iterable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltr8;

    invoke-interface {p1}, Ltr8;->release()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final v(Landroid/view/View;Log2;Loj3;)V
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lzr8;->c:Lvi2;

    iget-object v1, p0, Lzr8;->a:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v0, v1, p3, p1, p2}, Lvi2;->e(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Log2;)V

    :cond_0
    invoke-virtual {p0, p1}, Lzr8;->u(Landroid/view/View;)V

    return-void
.end method
