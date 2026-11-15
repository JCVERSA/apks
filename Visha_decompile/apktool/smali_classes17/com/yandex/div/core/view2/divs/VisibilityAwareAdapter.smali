.class public abstract Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lqj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;",
        "Lqj3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001c\n\u0002\u0008\u0007\u0008 \u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u0004B\u0015\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J!\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013H\u0004\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u000cR\u001d\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR \u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u001f0\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001cR\u001d\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001c\u001a\u0004\u0008#\u0010\u001eR \u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020&0%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\'R \u0010+\u001a\u0008\u0012\u0004\u0012\u00020)0\u001a8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u001c\u001a\u0004\u0008*\u0010\u001eR \u0010/\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u001f0,8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u0018\u00102\u001a\u00020\u0013*\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101\u00a8\u00063"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "VH",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lqj3;",
        "",
        "Lzl2;",
        "items",
        "<init>",
        "(Ljava/util/List;)V",
        "Lzfb;",
        "t",
        "()V",
        "",
        "position",
        "s",
        "(I)V",
        "r",
        "rawIndex",
        "Lcom/yandex/div2/DivVisibility;",
        "newVisibility",
        "u",
        "(ILcom/yandex/div2/DivVisibility;)V",
        "getItemCount",
        "()I",
        "k",
        "",
        "o",
        "Ljava/util/List;",
        "h",
        "()Ljava/util/List;",
        "Lmz4;",
        "p",
        "_visibleItems",
        "q",
        "j",
        "visibleItems",
        "",
        "",
        "Ljava/util/Map;",
        "visibilityMap",
        "Lqc2;",
        "getSubscriptions",
        "subscriptions",
        "",
        "g",
        "()Ljava/lang/Iterable;",
        "indexedItems",
        "i",
        "(Lzl2;)Lcom/yandex/div2/DivVisibility;",
        "visibility",
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
.field public final o:Ljava/util/List;

.field public final p:Ljava/util/List;

.field public final q:Ljava/util/List;

.field public final r:Ljava/util/Map;

.field public final s:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "items"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->o:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->p:Ljava/util/List;

    new-instance p1, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter$a;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter$a;-><init>(Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->q:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->r:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->s:Ljava/util/List;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->k()V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->t()V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->p:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic v(Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;ILcom/yandex/div2/DivVisibility;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->o:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzl2;

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->i(Lzl2;)Lcom/yandex/div2/DivVisibility;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->u(ILcom/yandex/div2/DivVisibility;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateItemVisibility"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final g()Ljava/lang/Iterable;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->o:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->j1(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->q:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->s:Ljava/util/List;

    return-object p0
.end method

.method public final h()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->o:Ljava/util/List;

    return-object p0
.end method

.method public final i(Lzl2;)Lcom/yandex/div2/DivVisibility;
    .locals 0

    invoke-virtual {p1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p0

    invoke-interface {p0}, Log2;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p1}, Lzl2;->d()Loj3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivVisibility;

    return-object p0
.end method

.method public final j()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->q:Ljava/util/List;

    return-object p0
.end method

.method public final k()V
    .locals 6

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->g()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmz4;

    invoke-virtual {v1}, Lmz4;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzl2;

    invoke-virtual {p0, v2}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->i(Lzl2;)Lcom/yandex/div2/DivVisibility;

    move-result-object v2

    sget-object v3, Lcom/yandex/div2/DivVisibility;->GONE:Lcom/yandex/div2/DivVisibility;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->r:Ljava/util/Map;

    invoke-virtual {v1}, Lmz4;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->p:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public r(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public s(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public final t()V
    .locals 5

    invoke-interface {p0}, Lqj3;->closeAllSubscription()V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->g()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmz4;

    invoke-virtual {v1}, Lmz4;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzl2;

    invoke-virtual {v2}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    invoke-interface {v2}, Log2;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-virtual {v1}, Lmz4;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzl2;

    invoke-virtual {v3}, Lzl2;->d()Loj3;

    move-result-object v3

    new-instance v4, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter$subscribeOnElements$1$subscription$1;

    invoke-direct {v4, p0, v1}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter$subscribeOnElements$1$subscription$1;-><init>(Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;Lmz4;)V

    invoke-virtual {v2, v3, v4}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u(ILcom/yandex/div2/DivVisibility;)V
    .locals 5

    const-string v0, "newVisibility"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzl2;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->r:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sget-object v3, Lcom/yandex/div2/DivVisibility;->GONE:Lcom/yandex/div2/DivVisibility;

    if-eq p2, v3, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    const/4 v3, -0x1

    if-nez v1, :cond_6

    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmz4;

    invoke-virtual {v4}, Lmz4;->c()I

    move-result v4

    if-le v4, p1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_4
    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->p:Ljava/util/List;

    new-instance v3, Lmz4;

    invoke-direct {v3, p1, v0}, Lmz4;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->r(I)V

    goto :goto_7

    :cond_6
    if-eqz v1, :cond_9

    if-nez p2, :cond_9

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmz4;

    invoke-virtual {v1}, Lmz4;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v3, v2

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->p:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->s(I)V

    :cond_9
    :goto_7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/VisibilityAwareAdapter;->r:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
