.class public abstract Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;
.super Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;,
        Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;",
        ">",
        "Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter<",
        "TVH;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008 \u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0002\u001c\u001dB\u0015\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\'\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001d\u0010\u001b\u001a\u00020\u000e2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0008\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;",
        "Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;",
        "VH",
        "Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;",
        "",
        "Lzl2;",
        "items",
        "<init>",
        "(Ljava/util/List;)V",
        "",
        "position",
        "getItemViewType",
        "(I)I",
        "holder",
        "Lzfb;",
        "x",
        "(Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;)V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Lzn2;",
        "divPatchCache",
        "Lcom/yandex/div/core/view2/a;",
        "bindingContext",
        "",
        "w",
        "(Landroidx/recyclerview/widget/RecyclerView;Lzn2;Lcom/yandex/div/core/view2/a;)Z",
        "newItems",
        "y",
        "a",
        "b",
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "items"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->j()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzl2;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-interface {v0}, Log2;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lzl2;->d()Loj3;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :cond_2
    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;->x(Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;)V

    return-void
.end method

.method public final w(Landroidx/recyclerview/widget/RecyclerView;Lzn2;Lcom/yandex/div/core/view2/a;)Z
    .locals 12

    const-string v0, "divPatchCache"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingContext"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lzn2;->a(Lei2;)Ldo2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Lcom/yandex/div/core/downloader/DivPatchApply;

    invoke-direct {v2, v0}, Lcom/yandex/div/core/downloader/DivPatchApply;-><init>(Ldo2;)V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    move v4, v1

    :goto_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->h()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ge v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->h()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzl2;

    invoke-virtual {v5}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v5

    invoke-interface {v5}, Log2;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v9

    invoke-virtual {p2, v9, v5}, Lzn2;->b(Lei2;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v8

    :goto_1
    if-eqz v9, :cond_3

    sget-object v10, Lcom/yandex/div2/DivVisibility;->GONE:Lcom/yandex/div2/DivVisibility;

    invoke-virtual {p0, v4, v10}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->u(ILcom/yandex/div2/DivVisibility;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->h()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v10

    invoke-static {v9, v10}, Lbh2;->s(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->h()Ljava/util/List;

    move-result-object v11

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v11, v4, v10}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-static {v10}, Ly71;->l(Ljava/util/Collection;)Lu15;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v10

    check-cast v11, Lq15;

    invoke-virtual {v11}, Lq15;->nextInt()I

    move-result v11

    add-int/2addr v11, v4

    invoke-static {p0, v11, v8, v6, v8}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->v(Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;ILcom/yandex/div2/DivVisibility;ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    add-int/2addr v4, v6

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/2addr v4, v7

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ldo2;->b()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->h()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_5
    if-ge v5, v4, :cond_7

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->h()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzl2;

    invoke-virtual {v9}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v9

    if-eqz p1, :cond_8

    move-object v10, p1

    goto :goto_6

    :cond_8
    invoke-virtual {p3}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v10

    :goto_6
    invoke-virtual {p3}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v11

    invoke-virtual {v2, v10, v9, v0, v11}, Lcom/yandex/div/core/downloader/DivPatchApply;->v(Landroid/view/View;Lcom/yandex/div2/Div;Ljava/lang/String;Loj3;)Lcom/yandex/div2/Div;

    move-result-object v9

    if-eqz v9, :cond_9

    sget-object v0, Lcom/yandex/div2/DivVisibility;->GONE:Lcom/yandex/div2/DivVisibility;

    invoke-virtual {p0, v5, v0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->u(ILcom/yandex/div2/DivVisibility;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->h()Ljava/util/List;

    move-result-object v0

    new-instance v4, Lzl2;

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Lzl2;-><init>(Lcom/yandex/div2/Div;Loj3;)V

    invoke-interface {v0, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v5, v8, v6, v8}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->v(Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;ILcom/yandex/div2/DivVisibility;ILjava/lang/Object;)V

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->t()V

    return v7
.end method

.method public x(Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;->e()V

    return-void
.end method

.method public y(Ljava/util/List;)V
    .locals 2

    const-string v0, "newItems"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->h()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$a;-><init>(Ljava/util/List;Ljava/util/List;)V

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;

    invoke-direct {v1, p0, p1}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter$b;-><init>(Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->t()V

    return-void
.end method
