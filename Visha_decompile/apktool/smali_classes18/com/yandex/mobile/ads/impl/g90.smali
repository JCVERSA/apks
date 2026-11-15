.class public abstract Lcom/yandex/mobile/ads/impl/g90;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/g90$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/yandex/mobile/ads/impl/ia0;",
        "Lcom/yandex/mobile/ads/impl/ma0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/na0;

.field private final b:Lcom/yandex/mobile/ads/impl/b90;

.field private final c:Lnk1;

.field private final d:Ljava/util/LinkedHashMap;

.field private e:Lcom/yandex/mobile/ads/impl/g90$a;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/na0;Lcom/yandex/mobile/ads/impl/b90;)V
    .locals 1

    .line 1
    const-string v0, "feedViewModel"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedAdItemVisibilityTracker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/ja0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ja0;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g90;->a:Lcom/yandex/mobile/ads/impl/na0;

    .line 4
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/g90;->b:Lcom/yandex/mobile/ads/impl/b90;

    .line 5
    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p2, v0, p2}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g90;->c:Lnk1;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g90;->d:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/na0;Lcom/yandex/mobile/ads/impl/b90;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 7
    new-instance p2, Lcom/yandex/mobile/ads/impl/b90;

    invoke-direct {p2}, Lcom/yandex/mobile/ads/impl/b90;-><init>()V

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/g90;-><init>(Lcom/yandex/mobile/ads/impl/na0;Lcom/yandex/mobile/ads/impl/b90;)V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/g90;I)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g90;->a:Lcom/yandex/mobile/ads/impl/na0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/na0;->a(I)V

    return-void
.end method

.method public static final access$bindHolder(Lcom/yandex/mobile/ads/impl/g90;Lcom/yandex/mobile/ads/impl/ma0;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/ia0;

    instance-of p2, p1, Lcom/yandex/mobile/ads/impl/ca0;

    if-eqz p2, :cond_0

    instance-of p2, p0, Lcom/yandex/mobile/ads/impl/n90;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/ca0;

    check-cast p0, Lcom/yandex/mobile/ads/impl/n90;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ca0;->a(Lcom/yandex/mobile/ads/impl/n90;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getBoundViewHolders$p(Lcom/yandex/mobile/ads/impl/g90;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g90;->d:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic access$getFeedViewModel$p(Lcom/yandex/mobile/ads/impl/g90;)Lcom/yandex/mobile/ads/impl/na0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g90;->a:Lcom/yandex/mobile/ads/impl/na0;

    return-object p0
.end method

.method public static final synthetic access$registerTrackers(Lcom/yandex/mobile/ads/impl/g90;)V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/g90;->c()V

    return-void
.end method

.method public static final access$unbindHolder(Lcom/yandex/mobile/ads/impl/g90;Lcom/yandex/mobile/ads/impl/ma0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/ca0;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/ca0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ca0;->a()V

    :cond_1
    return-void
.end method

.method public static final access$unregisterTrackers(Lcom/yandex/mobile/ads/impl/g90;)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g90;->b:Lcom/yandex/mobile/ads/impl/b90;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b90;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g90;->c:Lnk1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/d;->f(Lnk1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/g90;->f:Z

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/g90;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/g90;->a(Lcom/yandex/mobile/ads/impl/g90;I)V

    return-void
.end method

.method private final c()V
    .locals 8

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/g90;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/g90;->f:Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g90;->b:Lcom/yandex/mobile/ads/impl/b90;

    new-instance v1, Ldgd;

    invoke-direct {v1, p0}, Ldgd;-><init>(Lcom/yandex/mobile/ads/impl/g90;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/b90;->a(Lcom/yandex/mobile/ads/impl/a90;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/g90;->c:Lnk1;

    new-instance v5, Lcom/yandex/mobile/ads/impl/h90;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/yandex/mobile/ads/impl/h90;-><init>(Lcom/yandex/mobile/ads/impl/g90;Lwh1;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/yandex/mobile/ads/impl/st;
.end method

.method public abstract b()Lcom/yandex/mobile/ads/impl/qe2;
.end method

.method public getItemCount()I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/yandex/mobile/ads/impl/ha0;->a:Lcom/yandex/mobile/ads/impl/ha0;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g90;->e:Lcom/yandex/mobile/ads/impl/g90$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/g90$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/g90$a;-><init>(Lcom/yandex/mobile/ads/impl/g90;)V

    :cond_0
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/g90;->e:Lcom/yandex/mobile/ads/impl/g90$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/g90;->a:Lcom/yandex/mobile/ads/impl/na0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/na0;->d()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/g90;->a:Lcom/yandex/mobile/ads/impl/na0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/na0;->f()V

    :cond_1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/g90;->c()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/mobile/ads/impl/ma0;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/g90;->onBindViewHolder(Lcom/yandex/mobile/ads/impl/ma0;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yandex/mobile/ads/impl/ma0;I)V
    .locals 2

    .line 2
    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/g90;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/ia0;

    .line 5
    instance-of p2, p1, Lcom/yandex/mobile/ads/impl/ca0;

    if-eqz p2, :cond_0

    instance-of p2, p0, Lcom/yandex/mobile/ads/impl/n90;

    if-eqz p2, :cond_0

    .line 6
    check-cast p1, Lcom/yandex/mobile/ads/impl/ca0;

    check-cast p0, Lcom/yandex/mobile/ads/impl/n90;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ca0;->a(Lcom/yandex/mobile/ads/impl/n90;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/g90;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yandex/mobile/ads/impl/ma0;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yandex/mobile/ads/impl/ma0;
    .locals 6

    .line 2
    const-string v0, "parent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 5
    sget v0, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_feed_item:I

    .line 6
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/ca0;

    .line 8
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/g90;->a:Lcom/yandex/mobile/ads/impl/na0;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/na0;->a()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g90;->a()Lcom/yandex/mobile/ads/impl/st;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g90;->b()Lcom/yandex/mobile/ads/impl/qe2;

    move-result-object v4

    .line 11
    new-instance v5, Lcom/yandex/mobile/ads/impl/p90;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/p90;-><init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/qe2;)V

    move-object v0, p1

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/ca0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/view/ViewGroup;Lcom/yandex/mobile/ads/impl/st;Lcom/yandex/mobile/ads/impl/qe2;Lcom/yandex/mobile/ads/impl/p90;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 14
    sget p2, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_feed_progressbar:I

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 15
    new-instance p1, Lcom/yandex/mobile/ads/impl/fa0;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/fa0;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g90;->e:Lcom/yandex/mobile/ads/impl/g90$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/g90;->b:Lcom/yandex/mobile/ads/impl/b90;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/b90;->a()V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/g90;->c:Lnk1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/d;->f(Lnk1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/g90;->f:Z

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/mobile/ads/impl/ma0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/g90;->onViewAttachedToWindow(Lcom/yandex/mobile/ads/impl/ma0;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/yandex/mobile/ads/impl/ma0;)V
    .locals 2

    .line 2
    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    .line 5
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/ca0;

    if-eqz v1, :cond_0

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g90;->b:Lcom/yandex/mobile/ads/impl/b90;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/b90;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/mobile/ads/impl/ma0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/g90;->onViewDetachedFromWindow(Lcom/yandex/mobile/ads/impl/ma0;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/yandex/mobile/ads/impl/ma0;)V
    .locals 1

    .line 2
    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g90;->b:Lcom/yandex/mobile/ads/impl/b90;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/b90;->a(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/mobile/ads/impl/ma0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/g90;->onViewRecycled(Lcom/yandex/mobile/ads/impl/ma0;)V

    return-void
.end method

.method public onViewRecycled(Lcom/yandex/mobile/ads/impl/ma0;)V
    .locals 1

    .line 2
    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g90;->d:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/ca0;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/ca0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ca0;->a()V

    :cond_1
    return-void
.end method
